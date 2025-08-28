SELECT title, duration 
FROM Track
ORDER BY duration DESC
LIMIT 1;

SELECT title 
FROM Track
WHERE duration >= 210;

SELECT name 
FROM Collection
WHERE year BETWEEN 2018 AND 2020;

SELECT name 
FROM Artist
WHERE name NOT LIKE '% %';

SELECT title 
FROM Track
WHERE LOWER(title) LIKE '%мой%' OR LOWER(title) LIKE '%my%';

SELECT g.name, COUNT(ag.artist_id) AS artist_count
FROM Genre g
JOIN ArtistGenre ag ON g.genre_id = ag.genre_id
GROUP BY g.name;

SELECT COUNT(t.track_id) AS track_count
FROM Track t
JOIN Album a ON t.album_id = a.album_id
WHERE a.release_year BETWEEN 2019 AND 2020;

SELECT a.title, AVG(t.duration) AS avg_duration
FROM Album a
JOIN Track t ON a.album_id = t.album_id
GROUP BY a.title;


SELECT ar.name
FROM Artist ar
WHERE ar.artist_id NOT IN (
    SELECT aa.artist_id
    FROM ArtistAlbum aa
    JOIN Album a ON aa.album_id = a.album_id
    WHERE a.release_year = 2020
);

SELECT DISTINCT c.name
FROM Collection c
JOIN TrackCollection tc ON c.collection_id = tc.collection_id
JOIN Track t ON tc.track_id = t.track_id
JOIN Album a ON t.album_id = a.album_id
JOIN ArtistAlbum aa ON a.album_id = aa.album_id
JOIN Artist ar ON aa.artist_id = ar.artist_id
WHERE ar.name = 'Eminem';