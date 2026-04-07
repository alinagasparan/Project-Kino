import sys
import os
sys.path.append(os.path.dirname(__file__))

import db
def get_films_by_search(text):
    conn = db.get_connection()
    try:
        if not text or text.strip() == "":
            return []

        films = db.search_film_by_name(conn, text)

        result = []
        for film in films:
            info = db.get_film_info(conn, film["film_id"])

            result.append({
                "id": film["film_id"],
                "title": film["title"],
                "description": info["description"] if info else "",
                "year": info["release_year"] if info else None,
                "rating": info["rating"] if info else None
            })

        return result

    finally:
        conn.close()
        
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
        success = db.user_login(conn, username, password)

        if success:
            return {
                "username": username
            }
        else:
            return None
    finally:
        conn.close()
        
def get_films_by_genre(genre_name):
    conn = db.get_connection()
    try:
        return db.search_film_with_filters()
    finally:
        conn.close()
        
def get_films_with_filters(title=None, genre=None, actor=None, year=None, sort_by=None, sort_order="asc"):
    conn = db.get_connection()
    try:
        return db.search_film_with_filters(conn, title=title, genre=genre, actor=actor, year=year, sort_by=sort_by, sort_order=sort_order)
    finally:
        conn.close()
