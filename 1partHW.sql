INSERT INTO Musician (id,name)
VALUES
(1, 'AC/DC'),
(2, 'Within Temptation'),
(3, 'Rammstein'),
(4, 'Asking Alexandria');

INSERT INTO Genre (id,name)
VALUES
(1, 'Хард-рок'),
(2, 'Готик-метал'),
(3, 'Индастриал-метал'),
(4, 'Металкор');

INSERT INTO Albom (id,name,year)
VALUES
(1, 'The Razor’s Edge', 1990),
(2, 'Nippon', 1981),
(3, 'The Unforgiving', 2011),
(4, 'Sehnsucht', 1997),
(5, 'From Death to Destiny', 2013),
(6, 'Power Up', 2020);

INSERT INTO Track (id,name,duration,albom_id)
VALUES
(1, 'Thunderstruck', 3.17, 1),
(2, 'Hells Bells', 5.12, 2),
(3, 'In the middle of the night', 5.11, 3),
(4, 'Engel', 4.24, 4),
(5, 'Du Hast', 3.55, 4),
(6, 'Poison', 3.46, 5),
(7, 'Code Red', 3.31, 6);

INSERT INTO Compilation (id,name,year)
VALUES
(1, '100 AC/DC', 2020),
(2, 'By within temptation', 2015),
(3, 'Rammstein Discography', 2020),
(4, 'Musmore', 2021);

INSERT INTO musician_albom (musician_id,albom_id)
VALUES
(1, 1),
(1, 2),
(2, 3),
(3, 4),
(4, 5),
(1, 6);

INSERT INTO genre_mucisian (genre_id,musician_id)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4);

INSERT INTO compilation_track (compilation_id,track_id)
VALUES
(1, 1),
(1, 2),
(2, 3),
(3, 4),
(3, 5),
(4, 6),
(1, 7);