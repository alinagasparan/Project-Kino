CREATE SCHEMA IF NOT EXISTS users_schema;

CREATE TABLE IF NOT EXISTS users_schema.users (
    id INT GENERATED ALWAYS AS IDENTITY,
    user_name VARCHAR(100) NOT NULL,
    user_password VARCHAR(20) NOT NULL,
    avatar_url TEXT,
    CONSTRAINT pk_user PRIMARY KEY (id)
);

CREATE UNIQUE INDEX unique_user_name_ci
ON users_schema.users (LOWER(user_name));

CREATE TABLE IF NOT EXISTS users_schema.user_movies (
    user_id INTEGER REFERENCES users_schema.users(id) ON DELETE CASCADE,
    film_id INTEGER REFERENCES public.film(film_id) ON DELETE CASCADE,
    status_id INTEGER NOT NULL,
    
    PRIMARY KEY (user_id, film_id),
    FOREIGN KEY (status_id) REFERENCES users_schema.statuses(id)
);

CREATE TABLE IF NOT EXISTS users_schema.statuses (
    id INT GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(50) UNIQUE NOT NULL,
    CONSTRAINT pk_status PRIMARY KEY (id)
);