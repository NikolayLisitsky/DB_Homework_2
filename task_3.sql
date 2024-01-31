select g.name_genre, singers
from (SELECT genre_id as gid , COUNT(*) as singers FROM singers_generes 
GROUP BY genre_id 
ORDER BY COUNT(*))a join generes g on gid = g.genre_id;
------------------------------------
SELECT a.name_album, COUNT(name_track) 
FROM albums a  JOIN tracks t ON t.album_id = a.album_id
where date_album BETWEEN 2018 AND 2020
GROUP BY name_album;
------------------------------------
SELECT album_id, AVG(duration) FROM tracks t
GROUP BY album_id
ORDER BY album_id;
------------------------------------
SELECT distinct singer_id, alias FROM singers s 
WHERE alias NOT IN (SELECT DISTINCT alias  FROM singers s2 
LEFT JOIN singers_albums sa ON sa.singer_id  = s2.singer_id
LEFT JOIN albums a ON sa.album_id = a.album_id
WHERE date_album=2020)
ORDER BY singer_id;
-------------------------------------
SELECT DISTINCT name_collection FROM collections c
LEFT JOIN collections_tracks ct  ON c.collection_id = ct.collection_id 
LEFT JOIN tracks t ON ct.track_id = t.track_id 
LEFT JOIN albums a ON t.album_id = a.album_id
LEFT JOIN singers_albums sa ON sa.album_id = a.album_id 
LEFT JOIN singers s ON sa.singer_id = s.singer_id 
WHERE alias LIKE '%XAN$X%'
ORDER BY name_collection;


--1. количество исполнителей в каждом жанре;
SELECT g.name genre, COUNT(p.performer_id) count_performers FROM Genres g
LEFT JOIN Genres_Performers p ON g.id = p.genre_id
GROUP BY g.name;
--2. количество треков, вошедших в альбомы 2019-2020 годов;
SELECT COUNT(t.id) count_2019_2020 FROM Tracks t
RIGHT JOIN Albums a ON t.album_id = a.id
WHERE year_ BETWEEN 2019 AND 2020;
--3. средняя продолжительность треков по каждому альбому;
SELECT a.name album, AVG(t.duration) avg_duration FROM Tracks t
RIGHT JOIN Albums a ON t.album_id = a.id
GROUP BY a.name;
--4. все исполнители, которые не выпустили альбомы в 2020 году;
SELECT name FROM Performers 
WHERE name NOT IN (
	SELECT p.name FROM Performers p
	LEFT JOIN Performers_Albums pa ON p.id = pa.performer_id
	LEFT JOIN Albums a ON pa.album_id = a.id
	WHERE year_ = 2020
	);
--5. названия сборников, в которых присутствует конкретный исполнитель (выберите сами);
SELECT DISTINCT c.name collections_with_Maksim FROM Collections c 
JOIN Collections_Tracks ct ON c.id = ct.collection_id
JOIN Tracks t ON ct.track_id = t.id
JOIN Albums a ON t.album_id = a.id
JOIN Performers_Albums pa ON a.id = pa.album_id
JOIN Performers p ON pa.performer_id = p.id
WHERE p.name iLIKE '%%maksim%%';