import psycopg2
import os
from dotenv import load_dotenv
from psycopg2 import sql
from psycopg2 import errors
from psycopg2.extras import RealDictCursor

load_dotenv()
#Подключение к серверу для работы с базой python -c "from dotenv import load_dotenv; print('OK')"
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
    try:
        with conn.cursor() as cur:
            query = """
                INSERT INTO users_schema.users (user_name, user_password, avatar_url)
                VALUES (%s, %s, %s)
                RETURNING id;
                """
            cur.execute(query, (user_name, user_password, avatar_url))
            user_id = cur.fetchone()[0]

        conn.commit()
        return user_id

    except psycopg2.errors.UniqueViolation:
        conn.rollback()
        print("Username already exists")
        return None

#Вход в систему
def user_login(conn, nickname, password):
    with conn.cursor() as cur:
        query = """SELECT user_name, user_password 
        FROM users_schema.users
        WHERE LOWER(user_name) = LOWER(%s);"""
        cur.execute(query, (nickname,))
        user = cur.fetchone()
        if user is None:
            return False
        if user[1] == password:
            return True
        return False

#Добавление фильма в список. True если добавился, False если фильм был в другом списке и просто его статус поменялся
def add_film_to_list(conn, user_id, film_id, status_id):
    with conn.cursor() as cur:
        query = """
        INSERT INTO users_schema.user_movies (user_id, film_id, status_id)
        VALUES (%s, %s, %s)
        ON CONFLICT (user_id, film_id) 
        DO UPDATE SET status_id = EXCLUDED.status_id
        RETURNING xmax = 0 AS inserted;"""
        cur.execute(query, (user_id, film_id, status_id))
        inserted = cur.fetchone()[0]
        conn.commit()
        return inserted

#Словарь из названий фильмов, которые в списке у пользователя, список передается через status
def get_films_from_users_list(conn, user_id, status_id):
    with conn.cursor(cursor_factory=RealDictCursor) as cur:
        query = """SELECT f.film_id, f.title FROM users_schema.user_movies um
        JOIN public.film f ON f.film_id = um.film_id
        WHERE um.user_id = %s AND um.status_id = %s;"""
        cur.execute(query, (user_id, status_id))
        films = cur.fetchall()
    return films

#Удаление фильма из списка. Возвращает количество удаленных строк. 1 - успешно
def remove_film_from_list(conn, user_id, film_id, status_id):
    with conn.cursor() as cur:
        query = """DELETE FROM users_schema.user_movies 
        WHERE user_id = %s AND film_id = %s AND status_id = %s;"""
        cur.execute(query, (user_id, film_id, status_id))
        deleted_rows = cur.rowcount
        conn.commit()
        return deleted_rows

#Поиск фильма по названию. Возвращает словарь из id фильма и названия
def search_film_by_name(conn, film_name):
    with conn.cursor(cursor_factory=RealDictCursor) as cur:
        query = """SELECT film_id, title FROM public.film 
        WHERE LOWER(title) LIKE LOWER(%s);"""
        cur.execute(query, (f"%{film_name}%",))
        films = cur.fetchall()
        conn.commit()
        return films

#Информация по фильму
def get_film_info(conn, film_id):
    with conn.cursor(cursor_factory=RealDictCursor) as cur:
        query = """ SELECT title, description, release_year, rating 
        FROM public.film WHERE film_id = %s;"""
        cur.execute(query, (film_id,))
        film = cur.fetchone()
        return film


#Фильтры для поиска. Название, жанр, актёр, год выпуска. + Сортировка по году, названию, возрастному ограничению
def search_film_with_filters(
        conn,
        title=None,
        genre=None,
        actor=None,
        year=None,
        sort_by=None,  # "year", "rating", "title"
        sort_order="asc"  # "asc" или "desc"
):
    with conn.cursor(cursor_factory=RealDictCursor) as cur:
        query = """
        SELECT DISTINCT 
            f.film_id, 
            f.title, 
            f.release_year, 
            f.rating
        FROM public.film f
        LEFT JOIN public.film_category fc ON f.film_id = fc.film_id
        LEFT JOIN public.category c ON fc.category_id = c.category_id
        LEFT JOIN public.film_actor fa ON f.film_id = fa.film_id
        LEFT JOIN public.actor a ON fa.actor_id = a.actor_id
        WHERE 1=1
        """
        params = []
        if title:
            query += " AND LOWER(f.title) LIKE LOWER(%s)"
            params.append(f"%{title}%")

        if genre:
            query += " AND LOWER(c.name) = LOWER(%s)"
            params.append(genre)

        if actor:
            query += """
            AND (
                LOWER(a.first_name) LIKE LOWER(%s) 
                OR LOWER(a.last_name) LIKE LOWER(%s)
            )
            """
            params.extend([f"%{actor}%", f"%{actor}%"])

        if year:
            query += " AND f.release_year = %s"
            params.append(year)

        allowed_sort_fields = {
            "year": "f.release_year",
            "rating": "f.rating",
            "title": "f.title"
        }

        if sort_by in allowed_sort_fields:
            order = "ASC" if sort_order.lower() == "asc" else "DESC"
            query += f" ORDER BY {allowed_sort_fields[sort_by]} {order}"

        cur.execute(query, params)
        return cur.fetchall()