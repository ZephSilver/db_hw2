--Название и продолжительность самого длительного трека.
SELECT name, duration FROM track
WHERE duration = (SELECT MAX(duration) FROM track);

--Название треков, продолжительность которых не менее 3,5 минут.
SELECT name FROM track
WHERE duration >= 210;

--Названия сборников, вышедших в период с 2018 по 2020 год включительно.
SELECT name, release_date FROM collection
WHERE release_date BETWEEN '2018-01-01' AND '2020-12-31';

--Исполнители, чьё имя состоит из одного слова
SELECT name FROM artist
WHERE name NOT LIKE '% %';

--Название треков, которые содержат слово «мой» или «my».
SELECT name FROM track
WHERE name ILIKE '% мой %' OR name ILIKE '% my %';

--Количество исполнителей в каждом жанре.
SELECT name, COUNT(ag.artist_id) AS artist_count FROM genre g
LEFT JOIN artist_genre ag ON g.genre_id = ag.genre_id
GROUP BY g.name
ORDER BY artist_count DESC;

--Количество треков, вошедших в альбомы 2013–2014 годов.
SELECT COUNT(track_id) AS track_count FROM track t
JOIN album a ON t.album = a.album_id
WHERE a.release_date BETWEEN '2013-01-01' AND '2014-12-31';

--Средняя продолжительность треков по каждому альбому.
SELECT a.name, AVG(t.duration) AS avg_duration FROM album a
JOIN track t ON a.album_id = t.album
GROUP BY a.name
ORDER BY avg_duration DESC;

--Все исполнители, которые не выпустили альбомы в 2020 году.
SELECT name FROM artist a
WHERE a.artist_id NOT IN (
	SELECT aa.artist_id FROM artist_album aa 
	JOIN album al ON aa.album_id = al.album_id 
	WHERE EXTRACT(YEAR FROM al.release_date) = 2020
	);

--Названия сборников, в которых присутствует конкретный исполнитель 
SELECT DISTINCT c.name
FROM Collection c
JOIN Collection_Track ct ON c.collection_id = ct.collection_id
JOIN Track t ON ct.track_id = t.track_id
JOIN Album a ON t.album = a.album_id
JOIN Artist_Album aa ON a.album_id = aa.album_id
JOIN Artist ar ON aa.artist_id = ar.artist_id
WHERE ar.name = 'Queen';
