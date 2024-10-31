-- Задание 2.1

SELECT name, duration FROM track
WHERE duration = (SELECT MAX(duration) FROM track);

-- Задание 2.2

SELECT name, duration FROM track 
WHERE duration >= 3.5 * 60;

-- Задание 2.3

SELECT name, collection_year FROM collection
WHERE collection_year BETWEEN 2018 AND 2020;

-- Задание 2.4

SELECT name FROM musician 
WHERE name NOT LIKE '% %';

-- Задание 2.5

SELECT name FROM track 
WHERE name ILIKE '% my %' OR name ILIKE 'my %' OR name ILIKE '% my' OR name ILIKE 'my' OR name ILIKE '% мой %' OR name ILIKE 'мой %' OR name ILIKE '% мой' OR name ILIKE 'мой';

-- Задание 2.5 Альтернативное решение 1
SELECT name FROM track 
WHERE string_to_array(lower(name), ' ') && ARRAY['my', 'мой'];

-- Задание 2.5 Альтернативное решение 2
SELECT name FROM track 
WHERE name ~* '\mmy\M|\mмой\M'

-- Задание 3.1

SELECT genre_id, COUNT(*) FROM musiciansgenres
GROUP BY genre_id 
ORDER BY COUNT(*) DESC;

SELECT g.name, COUNT(*) FROM musiciansgenres AS mg
LEFT JOIN genre AS g ON mg.genre_id = g.id
GROUP BY g.name
ORDER BY COUNT (*) DESC;

-- Задание 3.2

SELECT COUNT(*) FROM track 
WHERE album_id IN 
(SELECT id FROM album
WHERE album_year BETWEEN 2019 AND 2020);

-- Задание 3.3

SELECT a.name AS n, AVG(t.duration) AS ad FROM album AS a
LEFT JOIN track AS t ON a.id = t.album_id 
GROUP BY n
ORDER BY ad DESC;

-- Задание 3.4

SELECT  mu.name FROM musician AS mu
LEFT JOIN albumsmusicians AS am ON mu.id = am.musician_id 
LEFT JOIN album AS a ON am.album_id = a.id AND a.album_year = 2020
GROUP BY mu.name
HAVING COUNT(a.id) = 0;

-- Задание 3.5

SELECT mu.name, col.name FROM musician mu
LEFT JOIN albumsmusicians am ON mu.id = am.album_id
LEFT JOIN track t ON am.album_id = t.album_id
JOIN collectionstracks ct ON t.id = ct.track_id
LEFT JOIN collection col ON ct.collection_id = col.id
WHERE mu.name LIKE 'Penelope Lope';

-- Задание 4.1

SELECT DISTINCT ON (a.name) mg.musician_id,  a.name, COUNT(mg.genre_id) FROM musiciansgenres as mg
LEFT JOIN albumsmusicians am ON mg.musician_id = am.musician_id 
LEFT JOIN album as a ON am.album_id = a.id
GROUP BY mg.musician_id, a.name
HAVING COUNT(mg.genre_id) > 1;

-- Задание 4.2

SELECT t.name FROM track t
LEFT JOIN collectionstracks as ct ON t.id = ct.track_id
WHERE ct.track_id IS NULL;

-- Задание 4.3

SELECT t.name FROM track as t
LEFT JOIN albumsmusicians am ON t.album_id = am.album_id 
LEFT JOIN musician mu ON am.musician_id = mu.id
WHERE t.duration = (SELECT MIN(duration) FROM track);

-- Задание 4.4
SELECT a.name FROM track t 
LEFT JOIN album as a ON t.album_id = a.id
GROUP BY a.name
HAVING COUNT(*) = 
(SELECT COUNT(*) FROM track t 
GROUP BY t.album_id
ORDER BY COUNT(*) ASC
LIMIT 1);


