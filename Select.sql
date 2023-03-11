--1.Количество исполнителей в каждом жанре.
SELECT genre_name, COUNT(singer_id) FROM genre g
JOIN singer_genre sg ON g.genre_id = sg.genre_id 
GROUP BY genre_name;

--2.Количество треков, вошедших в альбомы 2019–2020 годов.
SELECT COUNT(track_name) FROM track t 
JOIN album a ON t.album_id = a.album_id
WHERE year_of_issue BETWEEN 2019 AND 2020;

--3.Средняя продолжительность треков по каждому альбому.
SELECT AVG(duration), album_name FROM track t
JOIN album a ON t.album_id = a.album_id
GROUP BY album_name;

--4.Все исполнители, которые не выпустили альбомы в 2020 году.
SELECT singer_name FROM singer s
WHERE singer_name NOT IN (SELECT singer_name FROM singer s
JOIN album_singer sa ON s.singer_id = sa.singer_id
JOIN album a ON sa.album_id = a.album_id
WHERE year_of_issue = 2020);

--5.Названия сборников, в которых присутствует конкретный исполнитель.
SELECT DISTINCT compilation_name FROM compilation c 
JOIN track_compilation tc ON c.compilation_id = tc.compilation_id
JOIN track t ON tc.track_id = t.track_id 
JOIN album a ON t.album_id = a.album_id 
JOIN album_singer sa ON a.album_id  = sa.album_id 
JOIN singer s ON sa.singer_id = s.singer_id 
WHERE singer_name LIKE '%Beyonce%';

--6.Названия альбомов, в которых присутствуют исполнители более чем одного жанра.
SELECT album_name FROM album a
JOIN album_singer sa ON a.album_id = sa.album_id
JOIN singer s ON sa.singer_id = s.singer_id
JOIN singer_genre sg ON s.singer_id = sg.singer_id
GROUP BY a.album_name, sg.singer_id 
HAVING COUNT(*) > 1;

--7.Наименования треков, которые не входят в сборники.
SELECT track_name FROM track t 
LEFT JOIN track_compilation tc ON t.track_id = tc.track_id
WHERE compilation_id IS NULL;

--8.Исполнитель или исполнители, написавшие самый короткий по продолжительности трек.
SELECT singer_name FROM singer s 
JOIN album_singer sa ON s.singer_id = sa.singer_id
JOIN album a ON sa.album_id = a.album_id
JOIN track t ON a.album_id = t.album_id
WHERE duration = (SELECT min(duration) FROM track);

--9.Названия альбомов, содержащих наименьшее количество треков.
SELECT album_name FROM album a 
JOIN track t ON a.album_id = t.album_id
GROUP BY album_name
HAVING COUNT(DISTINCT track_name) = (SELECT COUNT(DISTINCT track_name) FROM track
GROUP BY track_name
ORDER BY COUNT(DISTINCT track_name)
LIMIT 1);