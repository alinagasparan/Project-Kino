import streamlit as st
from components.movie_cards import render_movie_card
from utils import show_mascot   
from backend.main1 import get_latest_movies  # Импортируем вашу функцию

# Настройка страницы
st.set_page_config(page_title="Home", layout="wide")

st.subheader("🔥 Премьеры недели")

# Получаем данные из БД (по умолчанию limit=4)
latest_movies = get_latest_movies(limit=4)

if not latest_movies:
    st.info("Список премьер скоро обновится!")
else:
    with st.container(key="premieres"):
        # Создаем колонки по количеству полученных фильмов
        cols = st.columns(len(latest_movies), gap="medium")
        
        for i, movie in enumerate(latest_movies):
            with cols[i]:
                # Используем данные из словаря, который возвращает get_latest_movies
                render_movie_card(
                    movie_id=movie["id"],
                    title=movie["title"], 
                    img_url=movie["poster"] if movie["poster"] else "https://via.placeholder.com/500x750?text=No+Poster"
                )

st.divider()

st.subheader("📰 Новости кино")
st.write("— Объявлена дата выхода нового сезона 'Истребителя демонов'!")
st.write("— Режиссер Кристофер Нолан работает над новым секретным проектом.")

show_mascot()