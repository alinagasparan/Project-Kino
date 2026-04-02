import psycopg2
import os
from dotenv import load_dotenv
from psycopg2 import sql
from psycopg2.extras import RealDictCursor

load_dotenv()
#Подключение к серверу для работы с базой
def get_connection():
    return psycopg2.connect(
        host=os.getenv("DB_HOST"),
        database=os.getenv("DB_NAME"),
        user=os.getenv("DB_USER"),
        password=os.getenv("DB_PASSWORD"),
        port=os.getenv("DB_PORT")
    )

#Количество элементов в таблице
def get_count(conn, table_name):
    with conn.cursor() as cur:
        query = sql.SQL("SELECT COUNT(*) FROM {}").format(sql.Identifier(table_name))
        cur.execute(query)
        result = cur.fetchone()
        return (f"{result[0]} элементов в таблице {table_name}")

#Регистрация пользователя
def user_register(conn, user_name, user_password, avatar_url=None):
    with conn.cursor() as cur:
        query = """
        INSERT INTO users_schema.users (user_name, user_password, avatar_url) VALUES (%s, %s, %s)
        RETURNING id;"""
        cur.execute(query, (user_name, user_password, avatar_url))
        user_id = cur.fetchone()[0]
    conn.commit()
    return user_id

#Добавление фильма в планы
def add_film_to_planned(conn, user_id, film_id):
    with conn.cursor() as cur:
        query = """INSERT INTO users_schema.user_movies (user_id, film_id, status) 
        VALUES (%s, %s, 'planned')
        ON CONFLICT (user_id, film_id) DO NOTHING
        RETURNING user_id;"""
        cur.execute(query, (user_id, film_id))
        result = cur.fetchone()
        conn.commit()
        return bool(result)

#Словарь из названий фильмов, которые в планах у пользователя
def get_users_planned_films(conn, user_id):
    with conn.cursor(cursor_factory=RealDictCursor) as cur:
        query = """SELECT f.film_id, f.title FROM users_schema.user_movies um
        JOIN public.film f ON f.film_id = um.film_id
        WHERE um.user_id = %s AND um.status = 'planned';"""
        cur.execute(query, (user_id,))
        films = cur.fetchall()
    return films


