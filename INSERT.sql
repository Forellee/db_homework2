INSERT INTO Genre (name) VALUES 
('Rock'),
('Pop'),
('Rap');

INSERT INTO Artist (name) VALUES
('Metallica'),
('Adele'),
('Eminem'),
('Баста');

INSERT INTO Album (title, release_year) VALUES
('Black Album', 1991),
('25', 2015),
('Music To Be Murdered By', 2020),
('Баста 40', 2019);

INSERT INTO Track (title, duration, album_id) VALUES
('Enter Sandman', 330, 1),   -- 5:30
('Nothing Else Matters', 388, 1), -- 6:28
('Hello', 295, 2),   -- 4:55
('Skyfall', 285, 2), -- 4:45
('Godzilla', 244, 3), -- 4:04
('Мой рай', 230, 4); -- 3:50

INSERT INTO Collection (name, year) VALUES
('Best of Rock', 2019),
('Top Pop', 2020),
('Rap Hits', 2018),
('Русский Рэп', 2019);

INSERT INTO ArtistGenre VALUES 
(1, 1),  -- Metallica - Rock
(2, 2),  -- Adele - Pop
(3, 3),  -- Eminem - Rap
(4, 3);  -- Баста - Rap

INSERT INTO ArtistAlbum VALUES 
(1, 1),
(2, 2),
(3, 3),
(4, 4);

-- Связи  между табл.
INSERT INTO TrackCollection VALUES
(1, 1),  -- Enter Sandman -> Best of Rock
(2, 1),  -- Nothing Else Matters -> Best of Rock
(3, 2),  -- Hello -> Top Pop
(4, 2),  -- Skyfall -> Top Pop
(5, 3),  -- Godzilla -> Rap Hits
(6, 4);  -- Мой рай -> Русский Рэп