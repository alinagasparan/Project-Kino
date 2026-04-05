import streamlit as st

def apply_styles():
    """Функция наводит общую красоту на странице"""
    
    style_html = """
    <style>
        /* Скрываем сайдбар */
        [data-testid="stSidebar"], [data-testid="stSidebarCollapsedControl"] {
            display: none !important;
        }

        /* Убираем отступ сверху */
        .block-container {
            padding-top: 0rem;
        }

        /* Убираем у всех */
        [data-testid="stHorizontalBlock"] {
            background-color: transparent !important;
            border-bottom: none !important;
            border-radius: 0 !important;
        }

        /* Шапка  */
        .st-key-navbar [data-testid="stHorizontalBlock"] {
            background-color: #060407 !important;
            padding: 10px 30px !important;
            border-radius: 16px !important;
            border-bottom: 2px solid #610f2e !important;
            align-items: center !important;
        }

        /* Фон за карточками */
        .st-key-premieres,
        .st-key-catalog {
            background-color: #060407 !important;
            padding: 20px !important;
            border-radius: 16px !important;
            border-bottom: 2px solid #610f2e !important;
            margin-bottom: 16px !important;
        }

        /* Анимация появления */
        .stApp {
            animation: fadeIn 0.8s ease-out;
        }
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(10px); }
            to { opacity: 1; transform: translateY(0); }
        }

        /* Минимальная ширина колонок */
        [data-testid="stColumn"] {
            min-width: 0 !important;
        }

        /* Карточка фильма */
        .movie-card {
            background: #1e223b;
            border-radius: 10px;
            padding: 10px;
            border: 1px solid rgba(255,255,255,0.1);
            transition: 0.3s ease;
            text-align: center;
            display: flex;
            flex-direction: column;
            justify-content: flex-start;
            height: auto;
            overflow: hidden;
            margin-bottom: 10px;
        }
        .movie-card:hover {
            transform: translateY(-5px);
            border-color: #a20e47;
            box-shadow: 0 10px 20px rgba(0,0,0,0.4);
        }
        .movie-card img {
            width: 100%;
            aspect-ratio: 2/3;
            object-fit: cover;
            border-radius: 5px;
            margin-bottom: 8px;
            flex-shrink: 0;
        }
        .movie-card h4 {
            font-size: 0.9rem;
            line-height: 1.3;
            height: 2.6em;
            overflow: hidden;
            display: -webkit-box;
            -webkit-line-clamp: 2;
            -webkit-box-orient: vertical;
            margin: 4px 0;
            color: #ffffff;
            word-break: break-word;
        }

        /* Кнопки Streamlit */
        div.stButton > button {
            background-color: #610f2e !important;
            color: white !important;
            border-radius: 8px !important;
            border: none !important;
            transition: 0.2s;
        }
        div.stButton > button:hover {
            background-color: #a20e47 !important;
            transform: scale(1.02);
        }

        /* Кот-помощник фиксированный */
        .mascot-container {
            position: fixed;
            bottom: 0px;
            left: 10px;
            z-index: 9999;
            cursor: pointer;
            transition: transform 0.3s ease;
        }

        .mascot-container:hover {
            transform: scale(1.1);
        }

        /* Вход рег */
        .st-key-auth_form {
            background-color: #060407 !important;
            padding: 30px !important;
            border-radius: 16px !important;
            border: 1px solid #610f2e !important;
            max-width: 500px !important;
            margin: 0 auto !important;
        }

        /* Кнопки переключения */
        .st-key-btn_login button,
        .st-key-btn_register button {
            background-color: transparent !important;
            border: 1px solid #610f2e !important;
            color: #e2e8f0 !important;
            font-size: 15px !important;
            padding: 8px !important;
            border-radius: 10px !important;
            width: 150px;  
        }
        .st-key-btn_login button{
            position: fixed;
            bottom: 10px;
            left: 20px;
        }
        .st-key-btn_register button{
            position: fixed;
            bottom: 10px;
            left: 180px;
        }

        .st-key-btn_login button:hover,
        .st-key-btn_register button:hover {
            background-color: #610f2e !important;
            color: #ffffff !important;
        }
    
    </style>
    """
    
    st.markdown(style_html, unsafe_allow_html=True)

def filter_panel():
    st.markdown("""
        <div style="background:#242330; padding:10px 16px; margin-bottom: 5px;">
            <span style="color:#ffffff; font-weight:500; font-size:14px; letter-spacing:1px;">ТИП</span>
        </div>
    """, unsafe_allow_html=True)
    
    film = st.checkbox("Фильм")
    serial = st.checkbox("TV Сериал")

    st.markdown("""
        <div style="background:#242330; padding:10px 16px; margin-top:16px; margin-bottom: 5px;">
            <span style="color:#ffffff; font-weight:500; font-size:14px; letter-spacing:1px;">ЖАНР</span>
        </div>
    """, unsafe_allow_html=True)
    
    fantastika = st.checkbox("Фантастика")
    boevik = st.checkbox("Боевик")
    comedy = st.checkbox("Комедия")
    drama = st.checkbox("Драма")
    horror = st.checkbox("Ужасы")
    mult = st.checkbox("Мультфильмы")

    st.markdown("""
        <div style="background:#242330; padding:10px 16px; margin-top:16px; margin-bottom: 5px;">
            <span style="color:#ffffff; font-weight:500; font-size:14px; letter-spacing:1px;">СОРТИРОВКА</span>
        </div>
    """, unsafe_allow_html=True)
    
    sort_by = st.radio(
        label="",
        options=["По рейтингу", "По популярности", "По алфавиту", "По дате выхода"],
        label_visibility="collapsed"
    )

    film_types = [t for t, v in [("Фильм", film), ("TV Сериал", serial)] if v]
    genres = [g for g, v in [
        ("Фантастика", fantastika), ("Боевик", boevik), ("Комедия", comedy),
        ("Драма", drama), ("Ужасы", horror), ("Мультфильмы", mult)
    ] if v]

    return film_types, genres, sort_by