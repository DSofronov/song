SELECT name, duration_sec FROM track
WHERE duration_sec = (SELECT max(duration_sec) FROM track);

SELECT name FROM track
WHERE duration_sec >= 3.5;

SELECT name FROM compilation
WHERE  EXTRACT(YEAR from year_issue) BETWEEN  2018 AND 2020;

SELECT name FROM performer
WHERE name NOT LIKE '% %'; 

SELECT name FROM track  
WHERE LOWER(name) LIKE '%мой%' OR LOWER(name) LIKE '%my%';

SELECT name, count(genre_id) FROM genre g
JOIN artist_genre ag ON ag.genre_id = g.id 
GROUP BY g."name";

SELECT count(t.id), a.name, a.year_issue  FROM track t
JOIN album a ON a.id = t.album_id 
WHERE EXTRACT (YEAR from a.year_issue) BETWEEN 2019 AND 2020
GROUP BY a.year_issue, a.name; 

SELECT avg(duration_sec), a."name"  FROM track t 
JOIN album a ON a.id = t.album_id 
GROUP BY a."name";

SELECT p.name, a.year_issue  FROM performer p 
JOIN album_artist aa ON aa.performer_id = p.id
JOIN album a ON aa.album_id = a.id 
WHERE a.year_issue NOT BETWEEN '2020-01-01' AND '2020-12-31';

SELECT DISTINCT  c.name  FROM compilation c
JOIN compilation_tracks ct ON c.id = ct.compilation_id
JOIN track t ON ct.track_id = t.id 
JOIN album a ON t.album_id = a.id 
JOIN album_artist aa ON aa.album_id = a.id 
JOIN performer p ON aa.performer_id = p.id 
WHERE aa.performer_id = 2; 