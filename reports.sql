-- Выручка по фильмам
SELECT m.title, SUM(s.price) AS revenue, COUNT(t.id) AS tickets
FROM movies m
JOIN sessions s ON m.id=s.movie_id
LEFT JOIN tickets t ON s.id=t.session_id
GROUP BY m.id ORDER BY revenue DESC;

-- Заполняемость зала
SELECT s.id, h.seats, COUNT(t.id) AS sold,
  ROUND(100.0*COUNT(t.id)/h.seats,1) AS pct
FROM sessions s
JOIN halls h ON s.hall_id=h.id
LEFT JOIN tickets t ON s.id=t.session_id
GROUP BY s.id;
