import db
from db import user_register, add_film_to_planned, get_users_planned_films

conn = db.get_connection()
cur = conn.cursor()

cur.execute("SELECT * FROM film LIMIT 5;")
print(cur.fetchall())
print(db.get_count(conn, "film"))
cur.execute("SELECT title FROM public.film WHERE film_id=133")
print(cur.fetchall())
add_film_to_planned(conn, 2, 133)
print(get_users_planned_films(conn, 2))
cur.close()
conn.close()