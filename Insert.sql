INSERT INTO singer(singer_id, singer_name) VALUES 
(1, 'Lady GaGa'),
(2, 'Rihanna'),
(3, 'Madonna'),
(4, 'The Beatles'),
(5, 'Beyonce'),
(6, 'Ed Sheeran'),
(7, 'Adele'),
(8, 'Филипп Киркоров');

INSERT INTO genre(genre_id, genre_name) VALUES
(9, 'Rock music'),
(10, 'Pop music'),
(11, 'RnB music'),
(12, 'Rap music'),
(13, 'Country music');

INSERT INTO singer_genre(singer_id, genre_id) VALUES
(1, 13),
(2, 10),
(3, 10),
(4, 9),
(5, 11),
(6, 10),
(7, 10),
(8, 10);

INSERT INTO singer_genre(singer_id, genre_id) VALUES
(1, 10);

INSERT INTO album(album_id, album_name, year_of_issue) VALUES
(14, 'A star is born', 2018),
(15, 'Music of the Sun', 2005),
(16, 'Madame X', 2019),
(17, 'Help!', 1965),
(18, 'Epic', 2013),
(19, 'Want Some?', 2007),
(20, '30', 2002),
(21, 'Незнакомка', 2003);

INSERT INTO album(album_id, album_name, year_of_issue) VALUES
(47, 'Hello', 2010);

INSERT INTO album_singer(album_id, singer_id) VALUES
(14, 1),
(15, 2),
(16, 3),
(17, 4),
(18, 5),
(19, 6),
(20, 7),
(21, 8);

INSERT INTO album_singer(album_id, singer_id) VALUES
(14, 2);

INSERT INTO track(track_id, track_name, duration, album_id) VALUES
(22, 'Bad Romance', 272, 14),
(23, 'Shallow', 202, 14),
(24, 'Whats my name', 254, 15),
(25, 'Pon de Replay', 202, 15),
(26, 'Back that up to the beat', 198, 16),
(27, 'Justify my love', 275, 16),
(28, 'Let it be', 242, 17),
(29, 'Yesterday', 124, 17),
(30, 'Break my soul', 256, 18),
(31, 'Rise up', 194, 18),
(32, 'Photograph', 260, 19),
(33, 'Sara', 181, 19),
(34, 'River Lea', 206, 20),
(35, 'Hold on', 364, 20),
(36, 'Поздно', 215, 21),
(37, 'Незнакомка', 254, 21);

INSERT INTO track(track_id, track_name, duration, album_id) VALUES
(46, 'Хобби', 324, 47);

INSERT INTO compilation(compilation_id, compilation_name, year_of_issue) VALUES
(38, 'One', 2017),
(39, 'Two', 2005),
(40, 'Three', 2010),
(41, 'Four', 2020),
(42, 'Five', 2000),
(43, 'Six', 2018),
(44, 'Seven', 1998),
(45, 'Eight', 2019);

INSERT INTO track_compilation(track_id, compilation_id) VALUES
(22, 38),
(23, 38),
(24 ,39),
(25, 39),
(26, 40),
(27, 40),
(28, 41),
(29, 41),
(30, 42),
(31, 42),
(32, 43),
(33, 43),
(34, 44),
(35, 44),
(36, 45),
(37, 45);