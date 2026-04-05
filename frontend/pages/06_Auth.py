import streamlit as st
from assets.styles import apply_styles          

# Окно регистрации/входа

st.set_page_config(page_title="Authentication", layout="wide")

if "auth_mode" not in st.session_state:
    st.session_state.auth_mode = "login"

st.markdown("<div style='height: 5vh;'></div>", unsafe_allow_html=True)

with st.container(key="auth_form"):
    if st.session_state.auth_mode == "login":
        st.subheader("Вход в аккаунт")
        email = st.text_input("Почта", placeholder="example@mail.com", key="login_email")
        password = st.text_input("Пароль", type="password", placeholder="••••••••", key="login_pass")
        if st.button("Войти", use_container_width=True):
            st.success("Добро пожаловать! (бэкенд в разработке)")
    else:
        st.subheader("Регистрация")
        username = st.text_input("Никнейм", placeholder="MovieLover2026", key="reg_username")
        email = st.text_input("Почта", placeholder="example@mail.com", key="reg_email")
        password = st.text_input("Пароль", type="password", placeholder="••••••••", key="reg_pass")
        password2 = st.text_input("Повторите пароль", type="password", placeholder="••••••••", key="reg_pass2")
        if st.button("Зарегистрироваться", use_container_width=True):
            if password != password2:
                st.error("Пароли не совпадают!")
            elif not username or not email:
                st.warning("Заполните все поля!")
            else:
                st.success("Аккаунт создан! (бэкенд в разработке)")

st.markdown("<div style='height: 16px;'></div>", unsafe_allow_html=True)

st.markdown("<div style='height: 16px;'></div>", unsafe_allow_html=True)

c1, c2 = st.columns(2)
with c1:
    if st.button("Войти", use_container_width=True, key="btn_login"):
        st.session_state.auth_mode = "login"
        st.rerun()
with c2:
    if st.button("Регистрация", use_container_width=True, key="btn_register"):
        st.session_state.auth_mode = "register"
        st.rerun()