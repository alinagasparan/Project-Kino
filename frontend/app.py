import streamlit as st
from assets.styles import apply_styles

# Конфигурация
#st.set_page_config(layout="wide", initial_sidebar_state="collapsed")
apply_styles()

# Страницы
home = st.Page("pages/01_Home.py", title="Главная", default=True)
catalog = st.Page("pages/02_Catalog.py", title="Каталог")
assistant = st.Page("pages/03_Assistant.py", title="Ассистент")
profile = st.Page("pages/04_Profile.py", title="Профиль")
details = st.Page("pages/05_Details.py", title="Детали")
auth = st.Page("pages/06_Auth.py", title="Войти")
pg = st.navigation([home, catalog, assistant, auth, profile, details], position="hidden")

# Шапка
st.title("🎬 Cinemind 🎬")
with st.container(key="navbar"):
    col1, col2, col3 = st.columns([1.5, 5, 0.7])
    
    with col1:
        with st.popover("📂 Меню навигации"):
            st.page_link("pages/01_Home.py", label="Главная", icon="🏠")
            st.page_link("pages/02_Catalog.py", label="Каталог", icon="🎬")
            st.page_link("pages/03_Assistant.py", label="Ассистент", icon="🐱")
            st.page_link("pages/04_Profile.py", label="Профиль") #Потом скрою
            st.page_link("pages/05_Details.py", label="Детали") #Потом скрою

    with col2:
        search_query = st.text_input("", placeholder="Поиск фильма по названию...  |  Например: Дюна", label_visibility="collapsed")

    with col3:
        if st.button("Войти"):
            st.switch_page("pages/06_Auth.py")

pg.run()