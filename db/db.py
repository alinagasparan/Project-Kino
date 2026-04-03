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

#Добавление фильма в список. True если добавился, False если фильм был в другом списке и просто его статус поменялся
def add_film_to_list(conn, user_id, film_id, status):
    with conn.cursor() as cur:
        query = """
        INSERT INTO users_schema.user_movies (user_id, film_id, status)
        VALUES (%s, %s, %s)
        ON CONFLICT (user_id, film_id) 
        DO UPDATE SET status = EXCLUDED.status
        RETURNING xmax = 0 AS inserted;"""
        cur.execute(query, (user_id, film_id, status))
        inserted = cur.fetchone()[0]
        conn.commit()
        return inserted

#Словарь из названий фильмов, которые в списке у пользователя, список передается через status
def get_films_from_users_list(conn, user_id, status):
    with conn.cursor(cursor_factory=RealDictCursor) as cur:
        query = """SELECT f.film_id, f.title FROM users_schema.user_movies um
        JOIN public.film f ON f.film_id = um.film_id
        WHERE um.user_id = %s AND um.status = %s;"""
        cur.execute(query, (user_id, status))
        films = cur.fetchall()
    return films

#Удаление фильма из списка. Возвращает количество удаленных строк. 1 - успешно
def remove_film_from_list(conn, user_id, film_id, status):
    with conn.cursor() as cur:
        query = """DELETE FROM users_schema.user_movies 
        WHERE user_id = %s AND film_id = %s AND status = %s;"""
        cur.execute(query, (user_id, film_id, status))
        deleted_rows = cur.rowcount
        conn.commit()
        return deleted_rows

