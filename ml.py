import pandas as pd
import numpy as np
from sentence_transformers import SentenceTransformer
from sklearn.metrics.pairwise import cosine_similarity
from sklearn.cluster import KMeans
import nltk
from nltk.corpus import stopwords
import sys
import re
import pickle 
import os
from pathlib import Path

def setup_nltk():
    try:
        nltk_data_dir = os.path.join(os.getcwd(), 'nltk_data')
        if not os.path.exists(nltk_data_dir):
            os.makedirs(nltk_data_dir)
        nltk.data.path.append(nltk_data_dir)
        
        nltk.download('stopwords', download_dir=nltk_data_dir, quiet=True)
        return set(stopwords.words('english'))
    except Exception as e:
        print(f"Предупреждение: Не удалось загрузить stopwords: {e}")
        return set()

try:
    stop_words = setup_nltk()
except:
    stop_words = set()

# Инициализирует Sentence Transformer модель 
def initialize_model():
    try:
        return SentenceTransformer('all-MiniLM-L6-v2')
    except Exception as e:
        print(f"Ошибка загрузки модели: {e}")
        raise

# Функция, которая создает список стоп-слов и слов из списка
def get_stop_phrases():
    english_stopwords = stop_words if stop_words else setup_nltk()
    
    custom_stop_phrases = {
        "hi", "hello", "movie about", "show me", "i want a movie about", 
        "please", "can you", "find", "give me", "search for", 
        "how are you", "i want", "the", "a", "an", "and", "or", "but"
    }
    return english_stopwords.union(custom_stop_phrases)

# Функция, которая убирает слова и оставляет только ключевые слова
def extract_keywords(query, stop_phrases):
    query = query.lower()
    words = query.split()
    keywords = [w for w in words if w not in stop_phrases and len(w) > 2]
    return keywords

def keyword_mask(text, keywords):
    if not keywords:
        return True
    text = text.lower()
    return any(k in text for k in keywords) 

# Функция извлечения жанров из списка
def extract_genres(query, all_genres):
    if not all_genres:
        return []
    
    query_lower = query.lower()
    matched = []
    
    for genre in all_genres:
        genre_lower = genre.lower()
        if genre_lower in query_lower:
            matched.append(genre)
        elif any(word in genre_lower for word in query_lower.split() if len(word) > 3):
            matched.append(genre)
    
    return list(set(matched))

# Загрузка файлов с правильной обработкой пути
def download_csv():
    """Загрузка CSV файла с поиском в разных местах"""
    possible_paths = [
        './movies_posters.csv',
        './data/movies_posters.csv',
        '../movies_posters.csv',
        Path(__file__).parent / 'movies_posters.csv',
        Path(__file__).parent.parent / 'movies_posters.csv'
    ]
    
    for path in possible_paths:
        if os.path.exists(path):
            try:
                df = pd.read_csv(path)
                if 'synopsis' not in df.columns and 'Overview' in df.columns:
                    df['synopsis'] = df['Overview']
                df = df.dropna(subset=['synopsis'])
                print(f"Файл загружен: {path}")
                return df
            except Exception as e:
                print(f"Ошибка загрузки {path}: {e}")
                continue
    
    raise FileNotFoundError("Не найден файл movies_posters.csv")

# Функция подготовки данных о жанре
def prepare_genre(df):
    if 'genres' in df.columns:
        df['genres'] = df['genres'].fillna('')
        df['Genre_List'] = df['genres'].apply(
            lambda g: [x.strip().lower() for x in str(g).split(',') if x.strip()]
        )
        all_genres = set()
        for g_list in df['Genre_List']:
            for genre in g_list:
                if genre:  
                    all_genres.add(genre)
        return df, all_genres
    return df, set()

def save_all(df, movie_embeddings, kmeans, filename='movie_data.pkl'):
    """Сохранение данных с проверкой"""
    try:
        with open(filename, 'wb') as f:
            pickle.dump({
                'df': df, 
                'embeddings': movie_embeddings, 
                'kmeans': kmeans
            }, f)
        print(f"Данные сохранены в {filename}")
    except Exception as e:
        print(f"Ошибка сохранения: {e}")

def load_all(filename='movie_data.pkl'):
    if os.path.exists(filename):
        try:
            with open(filename, 'rb') as f:
                data = pickle.load(f)
                return data['df'], data['embeddings'], data['kmeans']
        except Exception as e:
            print(f"Ошибка загрузки: {e}")
    return None, None, None

def create_movie_embeddings(df, model):
    try:
        text_column = 'synopsis' if 'synopsis' in df.columns else 'Overview'
        movie_embeddings = model.encode(
            df[text_column].tolist(), 
            show_progress_bar=False,  
            batch_size=32, 
            convert_to_numpy=True
        )
        return movie_embeddings
    except Exception as e:
        print(f"Ошибка создания эмбеддингов: {e}")
        raise

# Функция создания кластеров
def perform_clustering(movie_embeddings):
    k = min(50, len(movie_embeddings) // 10)  
    if k < 2:
        k = 2
    kmeans = KMeans(n_clusters=k, random_state=42, n_init=10)
    kmeans.fit(movie_embeddings)
    return kmeans

# Фильтрация по жанрам
def filter_by_genres(df, query_genres):
    if not query_genres or 'Genre_List' not in df.columns:
        return df.copy()
    
    try:
        genre_mask = df['Genre_List'].apply(
            lambda gs: any(
                any(qg.lower() in g.lower() or g.lower() in qg.lower() for g in gs) 
                for qg in query_genres
            ) if isinstance(gs, list) else False
        )
        filtered = df[genre_mask] if genre_mask.any() else df
        return filtered.copy()
    except Exception as e:
        print(f"Ошибка фильтрации по жанрам: {e}")
        return df.copy()

# Фильтрует фильмы по ключевым словам в описании
def filter_by_keywords(df, keywords):
    if not keywords:
        return df.copy()
    
    try:
        text_column = 'synopsis' if 'synopsis' in df.columns else 'Overview'
        mask = df[text_column].apply(lambda x: keyword_mask(str(x), keywords) if pd.notna(x) else False)
        filtered = df[mask] if mask.any() else df
        return filtered.copy()
    except Exception as e:
        print(f"Ошибка фильтрации по ключевым словам: {e}")
        return df.copy()

# Функция нахождения наиболее подходящих кластеров
def get_relevant_clusters(query_vec, centroids):
    n_clusters = min(5, len(centroids))
    cluster_scores = cosine_similarity(query_vec, centroids)[0]
    best_clusters = np.argsort(cluster_scores)[::-1][:n_clusters]
    return best_clusters



# Вычисляет бонус за совпадение жанров
def calculate_genre_bonus(row, query_genres):
    if not query_genres or 'Genre_List' not in row.index:
        return 0
    
    movie_genres = row['Genre_List']
    matches = 0
    for qg in query_genres:
        for mg in movie_genres:
            if qg in mg or mg in qg:
                matches += 1
                break
    
    if matches:
        return min(0.15, matches * 0.05)
    return 0

def calculate_rating_score(rating_str):
    if pd.isna(rating_str) or rating_str == 'N/A':
        return 0
    
    try:
        match = re.search(r'(\d+\.?\d*)', str(rating_str))
        if match:
            rating = float(match.group(1))
            return min(1.0, rating / 10.0) 
    except:
        pass
    return 0

# Вычисляет итоговый скор фильма
def calculate_final_score(score, genre_bonus, rating_score):
    return score * 0.7 + genre_bonus + rating_score * 0.2

def combine_indices(filtered_indices, cluster_indices, max_indices=100):

    filtered_indices = [i for i in filtered_indices if i is not None and i >= 0]
    cluster_indices = [i for i in cluster_indices if i is not None and i >= 0]
    
    combined = list(dict.fromkeys(filtered_indices + cluster_indices))
    
    if len(combined) > max_indices:
        combined = combined[:max_indices]
    
    return combined

def rank_movies(df, positions, scores, query_genres, top_n=50):
    """Безопасное ранжирование фильмов с проверкой границ"""
    if len(scores) == 0 or len(positions) == 0:
        return []
    
    n_results = min(top_n, len(scores), len(positions))
    if n_results == 0:
        return []
    
    top_indices = np.argsort(scores)[::-1][:n_results]
    
    final_results = []
    for idx_in_scores in top_indices:
        if idx_in_scores >= len(positions):
            continue
            
        original_pos = positions[idx_in_scores]
        
        if original_pos >= len(df) or original_pos < 0:
            continue
            
        row = df.iloc[original_pos]
        score = scores[idx_in_scores]
        genre_bonus = calculate_genre_bonus(row, query_genres)
        rating_score = calculate_rating_score(row.get('rating', 'N/A'))
        final_score = calculate_final_score(score, genre_bonus, rating_score)
        final_results.append((original_pos, final_score))
    
    final_results.sort(key=lambda x: x[1], reverse=True)
    
    return final_results[:top_n]

def train_model():
    print("Загрузка данных...")
    df = download_csv()
    
    print("Подготовка данных...")
    df, all_genres = prepare_genre(df)
    
    print("Инициализация модели...")
    model = initialize_model()
    
    print("Создание эмбеддингов фильмов...")
    movie_embeddings = create_movie_embeddings(df, model)
    
    print("Кластеризация...")
    kmeans = perform_clustering(movie_embeddings)
    
    # Добавляем кластеры в DataFrame
    df['cluster'] = kmeans.labels_
    
    print("Сохранение обученной модели...")
    save_all(df, movie_embeddings, kmeans)
    
    return df, movie_embeddings, kmeans, all_genres, model

# Глобальные переменные
df = None
movie_embeddings = None
kmeans = None
all_genres = None
model = None
centroids = None
stop_phrases = None

def initialize_system():
    global df, movie_embeddings, kmeans, all_genres, model, centroids, stop_phrases
    
    print("Проверка наличия сохраненной модели...")
    df, movie_embeddings, kmeans = load_all()
    
    if df is None:
        print("Модель не найдена. Начинаем обучение...")
        df, movie_embeddings, kmeans, all_genres, model = train_model()
    else:
        print("Модель загружена. Подготовка к использованию...")
        df, all_genres = prepare_genre(df)
        model = initialize_model()
        if 'cluster' not in df.columns and kmeans is not None:
            df['cluster'] = kmeans.labels_
    
    if kmeans is not None:
        centroids = kmeans.cluster_centers_
    stop_phrases = get_stop_phrases()
    
    print("Система готова к работе!")

# Функция для поиска фильмов
def search_movies(query, top_k=10):
    global df, movie_embeddings, kmeans, all_genres, model, centroids, stop_phrases
    
    if df is None:
        initialize_system()
    
    if df is None or df.empty:
        return []
    
    try:
        keywords = extract_keywords(query, stop_phrases)
        query_genres = extract_genres(query, all_genres)
        
        df_filtered = filter_by_genres(df, query_genres)
        df_filtered = filter_by_keywords(df_filtered, keywords)
        
        if len(df_filtered) > 0:
            filtered_positions = df_filtered.index.tolist()
            filtered_positions = [p for p in filtered_positions if 0 <= p < len(movie_embeddings)]
        else:
            filtered_positions = list(range(len(df)))
        
        if not filtered_positions:
            filtered_positions = list(range(len(df)))
        
        filtered_embeddings = movie_embeddings[filtered_positions]
        
        query_vec = model.encode([query])
        
        cluster_positions = []
        if centroids is not None and len(centroids) > 0 and kmeans is not None:
            cluster_scores = cosine_similarity(query_vec, centroids)[0]
            n_clusters = min(3, len(centroids))
            best_clusters = np.argsort(cluster_scores)[::-1][:n_clusters]
            
            for cluster in best_clusters:
                cluster_mask = df['cluster'] == cluster
                cluster_positions.extend(df[cluster_mask].index.tolist())
            
            cluster_positions = list(set([p for p in cluster_positions if 0 <= p < len(movie_embeddings)]))
        
        combined_positions = list(set(filtered_positions + cluster_positions))
        
        if len(combined_positions) > 500:
            combined_positions = combined_positions[:500]
        
        combined_embeddings = movie_embeddings[combined_positions]
        
        scores = cosine_similarity(query_vec, combined_embeddings)[0]
        
        ranked_results = rank_movies(df, combined_positions, scores, query_genres, top_k)
        
        results = []
        for rank, (pos, score) in enumerate(ranked_results, 1):
            row = df.iloc[pos]
            
            rating_value = row.get('rating', 'N/A')
            if pd.notna(rating_value) and rating_value != 'N/A':
                try:
                    match = re.search(r'(\d+\.?\d*)', str(rating_value))
                    if match:
                        rating_value = match.group(1)
                except:
                    pass
            
            title = row.get('title', row.get('Series_Title', row.get('original_title', 'Unknown')))
            year = row.get('year', row.get('Released_Year', row.get('release_date', 'N/A')))
            genres = row.get('genres', row.get('Genre', 'N/A'))
            director = row.get('directors', row.get('Director', 'N/A'))
            cast = row.get('cast', row.get('Star1', row.get('actors', 'N/A')))
            synopsis = row.get('overview', row.get('Overview', row.get('description', 'No description')))
            poster_url = row.get('poster_url', row.get('Poster_Link', ''))
            
            results.append({
                "rank": rank,
                "title": str(title),
                "year": str(year),
                "genre": str(genres),
                "rating": str(rating_value),
                "director": str(director),
                "cast": str(cast),
                "synopsis": str(synopsis),
                "poster_url": str(poster_url),
                "score": float(score)
            })
        
        return results
        
    except Exception as e:
        print(f"Ошибка при поиске: {e}")
        import traceback
        traceback.print_exc()
        return []
        
 

# Инициализируем систему при загрузке модуля
initialize_system()

