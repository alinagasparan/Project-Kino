import streamlit as st
from assets.styles import apply_styles, comments_style
from backend.main1 import get_films_by_search, add_movie_to_user_list, get_comments, add_comment

st.set_page_config(page_title="Детали фильма", layout="wide")
apply_styles()
comments_style()

movie_title = st.session_state.get("selected_movie")
movie_id = st.session_state.get("selected_movie_id")

if not movie_title or not movie_id:
    st.warning("Фильм не выбран. Пожалуйста, вернитесь на главную страницу.")
    if st.button("На главную"):
        st.switch_page("pages/01_Home.py")
    st.stop()

found_films = get_films_by_search(movie_title)

movie_data = next((f for f in found_films if f["id"] == movie_id), None)

if movie_data:
    if st.button("← Главное меню"):
        st.switch_page("pages/01_Home.py")

    col_img, col_info = st.columns([1, 2], gap="large")

    with col_img:
        # постер
        poster_url = movie_data['poster_link'] if movie_data[
            'poster_link'] else "https://via.placeholder.com/500x750?text=No+Poster"

        st.image(poster_url, use_container_width=True)

    with col_info:
        st.markdown(f"""
            <h1 class="movie-main-title">{movie_data['title']}</h1>
            <div class="title-underline"></div>
        """, unsafe_allow_html=True)

        genres_html = ""
        raw_genres = movie_data.get('genres', [])
        
        if isinstance(raw_genres, str) and raw_genres:
            genres_list = [g.strip() for g in raw_genres.split(',')]
        elif isinstance(raw_genres, list):
            genres_list = raw_genres
        else:
            genres_list = []

        for genre in genres_list:
            genres_html += f'<span style="background: #6f1638; padding: 5px 12px; border-radius: 15px; color: white; font-size: 0.8rem; margin-left: 8px; white-space: nowrap;">{genre}</span>'

        st.markdown(f"""
            <div style="display: flex; align-items: center; flex-wrap: wrap; gap: 5px; margin-bottom: 20px;">
                <span style="background: #1e223b; padding: 5px 15px; border-radius: 20px; color: #e2e8f0; font-weight: bold;">📅 {movie_data['year']}</span>
                {genres_html}
            </div>
        """, unsafe_allow_html=True)

        st.subheader("Описание")
        st.write(movie_data['description'] if movie_data['description'] else "Описание отсутствует.")

        st.divider()

        # Статус — только для авторизованных
        if "user" in st.session_state and st.session_state.user:
            from backend.main1 import add_movie_to_user_list

            status = st.selectbox(
                "Статус",
                ["Не выбрано", "Запланировано", "Просмотрено"],
                key="status_select"
            )

            if st.button("💾 Сохранить статус", key="save_status_btn"):
                status_map = {
                    "Запланировано": "planned",
                    "Просмотрено": "seen",
                }
                status_key = status_map.get(status)

                if status_key:
                    result = add_movie_to_user_list(
                        st.session_state.user["id"],
                        movie_id,
                        status_key
                    )
                    if result:
                        st.success(f"Фильм добавлен: {status}")
                    else:
                        st.info(f"Статус обновлён: {status}")
                else:
                    st.warning("Выберите статус.")
        else:
            st.info("🔒 Войдите в аккаунт, чтобы добавить фильм в список.")

    # Секция комментариев
    st.divider()
    st.subheader("💬 Комментарии")
    movie_comments = get_comments(movie_id)

    if movie_comments:
        for c in movie_comments:
            user_name = c.get('user_name', 'Гость')
            text = c.get('text', '')
            # Берем первую букву для стильной аватарки
            first_letter = user_name[0].upper() if user_name else "👤"

            st.markdown(f"""
                <div class="comment-card">
                    <div class="comment-header-row">
                        <div class="comment-avatar">{first_letter}</div>
                        <div class="comment-author-name">{user_name}</div>
                    </div>
                    <div class="comment-text-content">{text}</div>
                </div>
            """, unsafe_allow_html=True)
    else:
        st.info("Пока никто не оставил отзыв. Будьте первым!")

    # Форма отправки (только для авторизованных)
    if "user" in st.session_state and st.session_state.user:
        st.write("---")
        with st.container():
            new_comm_text = st.text_area("Оставь свой отзыв:", placeholder="Напишите, что вы думаете о фильме...", key="details_comment_input")
            
            if st.button("Отправить", key="send_comment_btn"):
                if new_comm_text.strip():
                    res = add_comment(st.session_state.user["id"], movie_id, new_comm_text)
                    
                    if res and "error" not in res:
                        st.success("Отзыв отправлен!")
                        # Перезагружаем страницу, чтобы комментарий сразу появился в списке
                        st.rerun()
                    else:
                        st.error(f"Ошибка при отправке: {res.get('error', 'Неизвестная ошибка')}")
                else:
                    st.error("Текст комментария не может быть пустым.")
    else:
        st.warning("🔒 Войдите в аккаунт, чтобы оставить комментарий.")

else:
    st.error("К сожалению, информация о фильме не найдена.")
    if st.button("Вернуться назад"):
        st.switch_page("pages/01_Home.py")
