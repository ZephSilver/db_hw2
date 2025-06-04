-- Вставка жанров 
INSERT INTO Genre (name) VALUES
('Rock'), ('Pop'), ('Hip-Hop'), ('Jazz'), ('Classical'), ('Electronic'), ('Country'), ('R&B'),
('Metal'), ('Punk'), ('Blues'), ('Reggae'), ('Folk'), ('Disco'), ('Soul'), ('Funk');

-- Вставка исполнителей
INSERT INTO Artist (name) VALUES
('The Beatles'), ('Queen'), ('Michael Jackson'), ('Madonna'), ('Eminem'), 
('Miles Davis'), ('Mozart'), ('Daft Punk'), ('Johnny Cash'), ('Beyoncé'),
('Led Zeppelin'), ('Pink Floyd'), ('Nirvana'), ('The Rolling Stones'), 
('David Bowie'), ('Prince'), ('Bob Marley'), ('AC/DC'), ('The Who'), 
('Radiohead'), ('Metallica'), ('The Clash'), ('Bob Dylan'), ('Aretha Franklin'), 
('Stevie Wonder'), ('The Doors'), ('Jimi Hendrix'), ('Frank Sinatra'), 
('Elvis Presley'), ('Chuck Berry');

-- Вставка альбомов
INSERT INTO Album (name, release_date) VALUES
('Abbey Road', '1969-09-26'), ('A Night at the Opera', '1975-11-21'), 
('Thriller', '1982-11-30'), ('Like a Virgin', '1984-11-12'),
('The Marshall Mathers LP', '2000-05-23'), ('Kind of Blue', '1959-08-17'),
('Symphony No. 40', '1788-07-25'), ('Random Access Memories', '2013-05-17'),
('At Folsom Prison', '1968-05-06'), ('Lemonade', '2016-04-23'),
('Led Zeppelin IV', '1971-11-08'), ('The Dark Side of the Moon', '1973-03-01'),
('Nevermind', '1991-09-24'), ('Sticky Fingers', '1971-04-23'),
('The Rise and Fall of Ziggy Stardust', '1972-06-06'), ('Purple Rain', '1984-06-25'),
('Exodus', '1977-06-03'), ('Back in Black', '1980-07-25'),
('Who''s Next', '1971-08-14'), ('OK Computer', '1997-05-21'),
('Master of Puppets', '1986-03-03'), ('London Calling', '1979-12-14'),
('Highway 61 Revisited', '1965-08-30'), ('I Never Loved a Man', '1967-03-10'),
('Songs in the Key of Life', '1976-09-28'), ('L.A. Woman', '1971-04-19'),
('Are You Experienced', '1967-05-12'), ('In the Wee Small Hours', '1955-04-25'),
('Elvis Presley', '1956-03-23'), ('Aftermath', '1966-04-15');

-- Связи исполнителей с альбомами
INSERT INTO Artist_Album (artist_id, album_id) VALUES
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5), 
(6, 6), (7, 7), (8, 8), (9, 9), (10, 10),
(11, 11), (12, 12), (13, 13), (14, 14), (15, 15), 
(16, 16), (17, 17), (18, 18), (19, 19), (20, 20),
(21, 21), (22, 22), (23, 23), (24, 24), (25, 25),
(26, 26), (27, 27), (28, 28), (29, 29), (30, 30);

-- Связи исполнителей с жанрами 
INSERT INTO Artist_Genre (artist_id, genre_id) VALUES
(1, 1), (2, 1), (3, 2), (3, 8), (4, 2), 
(5, 3), (6, 4), (7, 5), (8, 6), (9, 7), 
(10, 8), (10, 2),
(11, 1), (11, 9), (12, 1), (13, 1), (14, 1), 
(15, 2), (16, 8), (17, 12), (18, 9), (19, 10), 
(20, 1), (21, 9), (22, 10), (23, 11), (24, 14), 
(25, 8), (26, 1), (27, 1), (28, 2), (29, 1), 
(30, 1), (14, 11), (15, 1), (16, 16), (19, 1);

-- Вставка треков 
INSERT INTO Track (name, duration, album) VALUES
('Come Together', 259, 1), ('Something', 182, 1), ('Maxwell''s Silver Hammer', 207, 1),
('Bohemian Rhapsody', 354, 2), ('You''re My Best Friend', 172, 2), ('Love of My Life', 219, 2),
('Thriller', 357, 3), ('Beat It', 258, 3), ('Billie Jean', 294, 3),
('Like a Virgin', 220, 4), ('Material Girl', 244, 4), ('Angel', 236, 4),
('The Real Slim Shady', 284, 5), ('Stan', 404, 5), ('The Way I Am', 290, 5),
('So What', 562, 6), ('Freddie Freeloader', 589, 6), ('Blue in Green', 338, 6),
('Molto Allegro', 452, 7), ('Andante', 403, 7), ('Menuetto', 223, 7),
('Get Lucky', 369, 8), ('Lose Yourself to Dance', 353, 8), ('Give Life Back to Music', 275, 8),
('Folsom Prison Blues', 168, 9), ('Cocaine Blues', 188, 9), ('25 Minutes to Go', 197, 9),
('Formation', 226, 10), ('Sorry', 223, 10), ('Hold Up', 213, 10),
('Black Dog', 296, 11), ('Rock and Roll', 220, 11), ('Stairway to Heaven', 482, 11),
('Speak to Me', 90, 12), ('Breathe', 163, 12), ('Time', 413, 12),
('Smells Like Teen Spirit', 301, 13), ('Come As You Are', 219, 13), ('Lithium', 257, 13),
('Brown Sugar', 232, 14), ('Wild Horses', 342, 14), ('Can''t You Hear Me Knocking', 421, 14),
('Five Years', 285, 15), ('Soul Love', 216, 15), ('Moonage Daydream', 277, 15),
('Let''s Go Crazy', 237, 16), ('Take Me With U', 210, 16), ('Purple Rain', 506, 16),
('Natural Mystic', 197, 17), ('Exodus', 451, 17), ('Jamming', 236, 17),
('Hells Bells', 312, 18), ('Shoot to Thrill', 316, 18), ('Back in Black', 255, 18),
('Baba O''Riley', 305, 19), ('Bargain', 323, 19), ('Behind Blue Eyes', 238, 19),
('Airbag', 237, 20), ('Paranoid Android', 383, 20), ('Subterranean Homesick Alien', 267, 20),
('Battery', 312, 21), ('Master of Puppets', 515, 21), ('Welcome Home (Sanitarium)', 388, 21),
('London Calling', 199, 22), ('Brand New Cadillac', 149, 22), ('Jimmy Jazz', 272, 22),
('Like a Rolling Stone', 369, 23), ('Tombstone Blues', 347, 23), ('It Takes a Lot to Laugh', 187, 23),
('Respect', 147, 24), ('Drown in My Own Tears', 252, 24), ('Dr. Feelgood', 178, 24),
('Love''s in Need of Love Today', 456, 25), ('Have a Talk with God', 177, 25), ('Village Ghetto Land', 226, 25),
('The Changeling', 272, 26), ('Love Her Madly', 201, 26), ('Riders on the Storm', 434, 26),
('Foxy Lady', 199, 27), ('Manic Depression', 222, 27), ('Red House', 224, 27),
('In the Wee Small Hours', 187, 28), ('Mood Indigo', 193, 28), ('Glad to Be Unhappy', 168, 28),
('Blue Suede Shoes', 120, 29), ('I''m Counting on You', 156, 29), ('Just Because', 157, 29),
('Paint It Black', 222, 30), ('Stupid Girl', 161, 30), ('Lady Jane', 193, 30);

-- Вставка сборников 
INSERT INTO Collection (name, release_date) VALUES
('Greatest Hits of 70s', '2000-01-01'), ('Pop Legends', '2015-06-15'),
('Hip-Hop Essentials', '2018-11-20'), ('Jazz Classics', '2005-09-10'),
('Classical Masterpieces', '2010-03-05'), ('Electronic Vibes', '2019-07-22'),
('Country Roads', '2007-04-18'), ('R&B Soul', '2020-02-14'),
('Rock Anthems', '2017-05-12'), ('Best of 80s', '2001-09-08'),
('Guitar Heroes', '2019-03-22'), ('Legendary Live Performances', '2020-07-15'),
('Essential Classics', '2018-11-30'), ('Summer Hits', '2016-06-01'),
('Winter Mood', '2015-12-10'), ('Road Trip Mix', '2021-04-05');

-- Связи треков со сборниками 
INSERT INTO Collection_Track (track_id, collection_id) VALUES
(1, 1), (4, 1), (10, 1),
(7, 2), (8, 2), (9, 2), (10, 2), (11, 2),
(13, 3), (14, 3), (15, 3),
(16, 4), (17, 4), (18, 4),
(19, 5), (20, 5), (21, 5),
(22, 6), (23, 6), (24, 6),
(25, 7), (26, 7), (27, 7),
(28, 8), (29, 8), (30, 8),
(31, 9), (34, 9), (37, 9), (40, 9), (43, 9),
(7, 10), (8, 10), (9, 10), (16, 10), (17, 10),
(31, 11), (49, 11), (52, 11), (55, 11), (58, 11),
(4, 12), (13, 12), (22, 12), (31, 12), (40, 12),
(1, 13), (10, 13), (19, 13), (28, 13), (37, 13),
(17, 14), (26, 14), (35, 14), (44, 14), (53, 14),
(5, 15), (14, 15), (23, 15), (32, 15), (41, 15),
(3, 16), (12, 16), (21, 16), (30, 16), (39, 16);

