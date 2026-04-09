import streamlit as st
import pandas as pd
from backend.main1 import get_all_movies_with_details
from components.movie_cards import render_movie_card
from assets.styles import apply_styles, filter_panel

st.set_page_config(page_title="Catalog", layout="wide")
apply_styles()
st.title("Библиотека кино")

if "catalog_shown" not in st.session_state:
    st.session_state.catalog_shown = 30

# 1. Загрузка данных (остается без изменений)
if "catalog_data" not in st.session_state:
    with st.spinner("Загрузка фильмов..."):
        movies = get_all_movies_with_details()
        data = pd.DataFrame(movies) if movies else pd.DataFrame()
        if not data.empty:
            # Приводим названия колонок к единому стандарту
            data = data.rename(columns={
                "movie_id": "id",
                "poster_link": "poster",
                "release_year": "year"
            })
        st.session_state.catalog_data = data

# Работаем с копией данных из сессии
df = st.session_state.catalog_data.copy()

BATCH_SIZE = 30

with st.container(key="catalog"):
    main_col, filter_col = st.columns([4, 1])

    with filter_col:
        st.markdown("### 🔍 Фильтры")
        # filter_panel возвращает: film_types, genres, sort_by, selected_year
        _, selected_genres, sort_selection, selected_year = filter_panel()

        if st.button("Сбросить фильтры"):
            st.session_state.catalog_shown = 30
            st.rerun()

    # --- ЛОГИКА ФИЛЬТРАЦИИ И СОРТИРОВКИ (Pandas) ---
    if not df.empty:
        # 2. Фильтрация по жанрам 
        # (Предполагается, что в df есть колонка 'genre'. Если её нет, фильтр будет пропущен)
        if selected_genres and "genre" in df.columns:
            df = df[df['genre'].isin(selected_genres)]

        # 3. Фильтрация по году
        if selected_year and selected_year != "Все годы":
            df = df[df['year'] == int(selected_year)]

        # 4. Сортировка
        if sort_selection == "По алфавиту (А-Я)":
            df = df.sort_values(by="title", ascending=True)
        elif sort_selection == "По алфавиту (Я-А)":
            df = df.sort_values(by="title", ascending=False)
        elif sort_selection == "Сначала новые":
            df = df.sort_values(by="year", ascending=False)
        elif sort_selection == "Сначала старые":
            df = df.sort_values(by="year", ascending=True)

    with main_col:
        if df.empty:
            st.warning("Ничего не найдено с такими фильтрами 🍿")
        else:
            shown = st.session_state.catalog_shown
            page_data = df.iloc[:shown]

            # Отрисовка карточек
            cols_per_row = 3
            for i in range(0, len(page_data), cols_per_row):
                columns = st.columns(cols_per_row)
                for j in range(cols_per_row):
                    if i + j < len(page_data):
                        row = page_data.iloc[i + j]
                        with columns[j]:
                            render_movie_card(
                                movie_id=row['id'],
                                title=row['title'],
                                img_url=row.get('poster', '')
                            )

            # Кнопка пагинации
            if shown < len(df):
                st.markdown("<div style='height: 20px'></div>", unsafe_allow_html=True)
                _, col2, _ = st.columns([2, 1, 2])
                with col2:
                    if st.button("Загрузить ещё", use_container_width=True):
                        st.session_state.catalog_shown += BATCH_SIZE
                        st.rerun()
                st.caption(f"Показано {min(shown, len(df))} из {len(df)} фильмов")