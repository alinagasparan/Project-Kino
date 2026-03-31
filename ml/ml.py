import pandas as pd
from sentence_transformers import SentenceTransformer
from sklearn.metrics.pairwise import cosine_similarity

# === 1. Загрузка модели BERT ===
print("🚀 Загружаем модель BERT...")
model = SentenceTransformer('all-MiniLM-L6-v2')  # компактная и быстрая

# === 2. Загрузка базы фильмов ===
df = pd.read_csv('../movies.csv')  # путь: на уровень выше, если база рядом с ml
df = df.dropna(subset=['overview'])

# === 3. Преобразуем описания в векторы ===
print("🔹 Преобразуем описания фильмов в векторы...")
movie_embeddings = model.encode(df['overview'].tolist(), show_progress_bar=True)

print("✅ Всё готово! Вводи описание фильма:")

# === 4. Запрос пользователя и поиск ===
while True:
    query = input("\n🔎 Опиши фильм: ")
    
    if query.lower() in ('exit', 'quit'):
        break
    
    query_vec = model.encode([query])
    
    # cosine similarit
    scores = cosine_similarity(query_vec, movie_embeddings)[0]
    
    # топ-5 фильмов
    top_indices = scores.argsort()[-5:][::-1]
    
    print("\n🎬 Топ-5 фильмов по смыслу:\n")
    for rank, i in enumerate(top_indices, 1):
        row = df.iloc[i]
        print(f"{rank}. {row['title']} ({row['release_date']}) | ⭐ {row['vote_average']} | 🔥 {row['popularity']}")
        print(f"   📝 {row['overview'][:150]}...\n")