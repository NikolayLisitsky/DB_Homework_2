SELECT name_track, duration
FROM tracks 
ORDER BY duration DESC
LIMIT 1;
 
SELECT name_track
FROM tracks 
WHERE duration >= 210;

SELECT name_collection 
FROM collections 
WHERE year_collection BETWEEN 2018 AND 2020;

SELECT alias 
FROM singers
WHERE alias NOT LIKE '% %';

SELECT name_track 
FROM tracks 
WHERE LOWER(name_track) LIKE ('%мой%') OR LOWER(name_track) LIKE ('%my%');