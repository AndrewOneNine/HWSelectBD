--Задание 2
--название и продолжительность самого длительного трека
SELECT name, duration FROM track 
WHERE duration  = (SELECT MAX(duration) FROM track);

--Название треков, продолжительность которых не менее 3,5 минут.
SELECT name, duration FROM track
WHERE duration >= 210;

--Названия сборников, вышедших в период с 2018 по 2020 год включительно.
SELECT name, year FROM compilation
WHERE year >= 2018 AND year <= 2020;

--Исполнители, чьё имя состоит из одного слова.
SELECT name FROM musician
WHERE name NOT LIKE '%% %%' AND name NOT LIKE '%%/%%';
--AC/DC - два слова: ac - переменный ток, dc - постоянный ток. Поэтому доп.условие введено

--Название треков, которые содержат слово «мой» или «my».
SELECT name FROM track
WHERE name LIKE '% my %' OR name LIKE '% мой %' OR name LIKE '% My %' OR name LIKE '% Мой %';