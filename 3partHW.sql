--Задание 3
--Количество исполнителей в каждом жанре
SELECT g.name, count(m.name)
FROM genre as g
LEFT JOIN genre_mucisian AS gm ON g.id = gm.genre_id
LEFT JOIN musician AS m ON gm.musician_id = m.id
GROUP BY g.name
ORDER BY count(m.id) DESC

--Количество треков, вошедших в альбомы 2019–2020 годов
SELECT t.name, a.year
FROM albom AS a
LEFT JOIN track AS t ON t.albom_id = a.id
WHERE (a.year >= 2019) AND  (a.year <= 2020);

--Средняя продолжительность треков по каждому альбому.
SELECT a.name, AVG(t.duration)
FROM albom AS a
LEFT JOIN track AS t ON t.albom_id = a.id
GROUP BY a.name
ORDER BY AVG(t.duration)

--Все исполнители, которые не выпустили альбомы в 2020 году.
SELECT DISTINCT m.name
FROM musician as m
WHERE m.name NOT IN (
    SELECT DISTINCT m.name
    FROM musician as m
    LEFT JOIN musician_albom AS ma ON m.id = ma.musician_id
    LEFT JOIN albom as a ON a.id = ma.albom_id
    WHERE a.year = 2020
)
ORDER BY m.name

--Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
SELECT DISTINCT c.name
FROM compilation AS c
LEFT JOIN compilation_track AS ct ON c.id = ct.compilation_id
LEFT JOIN track AS t ON t.id = ct.track_id
LEFT JOIN albom AS a ON a.id = t.albom_id
LEFT JOIN musician_albom AS ma ON ma.albom_id = a.id
LEFT JOIN musician AS m ON m.id = ma.musician_id
WHERE m.name LIKE '%%AC/DC%%'
ORDER BY c.name