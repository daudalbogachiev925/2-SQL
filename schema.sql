CREATE TABLE movies (id INTEGER PRIMARY KEY, title TEXT, genre TEXT, duration INTEGER);
CREATE TABLE halls (id INTEGER PRIMARY KEY, name TEXT, seats INTEGER);
CREATE TABLE sessions (id INTEGER PRIMARY KEY, movie_id INTEGER,
    hall_id INTEGER, started DATETIME, price REAL);
CREATE TABLE tickets (id INTEGER PRIMARY KEY, session_id INTEGER,
    seat INTEGER, sold_at DATETIME);
