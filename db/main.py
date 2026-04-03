import db

conn = db.get_connection()
cur = conn.cursor()

cur.execute("SELECT * FROM film LIMIT 5;")
print(cur.fetchall())
print(db.get_count(conn, "film"))
cur.execute("SELECT title FROM public.film WHERE film_id=133")
print(cur.fetchall())
print(db.add_film_to_list(conn, 3, 133, "watched"))
print(db.get_films_from_users_list(conn, 3, "watched"))
print(db.remove_film_from_list(conn, 3, 133, "watched"))
print(db.get_films_from_users_list(conn, 3, "watched"))

cur.close()
conn.close()