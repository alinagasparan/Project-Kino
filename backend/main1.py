import sys
import os
sys.path.append(os.path.dirname(__file__))

import db
def get_films_by_search(text):
    conn = db.get_connection()
    try:
        if not text or text.strip() == "":
            return []

        films=db.search_film_by_name(conn,text)

        result = []
        for film in films:
            result.append({
                "id": film["film_id"],
                "title": film["title"],
                "description": film.get("description"),
                "year": film.get("release_year"),
                "rating": film.get("rating")
            })

        return result
    finally:
        conn.close()
import db

def register_user(user_name, user_password, avatar_url=None):
    conn = db.get_connection()
    try:
        user_id = db.user_register(conn, user_name, user_password, avatar_url)

        return {
            "id": user_id,
            "username": user_name
        }

    finally:
        conn.close()

def check_user_login(username, password):
    conn = db.get_connection()
    try:
        with conn.cursor() as cur:
            cur.execute(
                "SELECT id, user_name FROM users_schema.users WHERE user_name=%s AND user_password=%s",
                (username, password)
            )
            user = cur.fetchone()
        return {"id": user[0], "username": user[1]} if user else None
    finally:
        conn.close()

def get_films_by_genre(genre_name):
    conn = db.get_connection()
    try:
        return db.search_film_with_filters()
    finally:
        conn.close()