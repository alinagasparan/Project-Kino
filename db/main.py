import db

conn = db.get_connection()
cur = conn.cursor()

cur.execute("SELECT * FROM film LIMIT 5;")
print(cur.fetchall())
print(db.get_count(conn, "film"))
cur.execute("SELECT title FROM public.film WHERE film_id=133")
print(cur.fetchall())
print(db.user_register(conn, "user1", "123"))
print(db.user_register(conn, "user2", "123"))
print(db.add_film_to_list(conn, 2, 133, "1"))

print(db.add_film_to_list(conn, 2, 384, "1"))
print(db.get_film_info(conn, "133"))
print(db.user_login(conn, "user2", "123"))
cur.close()
conn.close()