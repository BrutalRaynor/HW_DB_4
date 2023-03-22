INSERT INTO Artists(artist_name) 
values
('The Beatles'),
('The Rolling Stones'),
('Queen'),
('The Doors'),
('Led Zeppelin'),
('Deep Purple'),
('David Bowie'),
('ABBA'),
('Lady Gaga'),
('Camila Cabello');

INSERT INTO Genres(genre_name) 
values
('rock'),
('pop'),
('rock and roll'),
('hard rock'),
('Psychedelic Rock');

INSERT INTO Albums(album_name, release_year)
VALUES
('Let It Be', 1970),
('Beggars Banquet', 1968),
('Innuendo', 1991),
('Strange Days', 1967),
('Led Zeppelin IV', 1971),
('Machine Head', 1972),
('The Rise and Fall of Ziggy Stardust and the Spiders from Mars', 1972),
('Greatest Hits Vol. 2', 1979),
('Chromatica', 2020),
('Camila', 2018);

INSERT INTO Compilations (compilation_name, release_year)
VALUES
('The Beatles 1967–1970', 1973),
('Forty Licks', 2002),
('Greatest Hits II', 1991),
('Legacy: the Absolute Best', 2003),
('Led Zeppelin Remasters', 1990),
('The Mark II Purple Singles', 1979),
('The Best of Bowie', 1980),
('ABBA Gold: Greatest Hits', 1992),
('Bohemian Rhapsody', 2018),
('Dawn of Chromatica', 2021),
('Camila', 2018),
('Anthology 2', 1996);

INSERT INTO Tracks(track_name, track_duraton, album_id)
VALUES
('Let It Be', 4.03, 1),
('Street Fighting Man', 3.09, 2),
('The Show Must Go On', 4.31, 3),
('People Are Strange', 2.12, 4),
('Stairway to Heaven', 8.01, 5),
('Smoke on the Water', 5.42, 6),
('Starman', 4.16, 7),
('Gimme! Gimme! Gimme! (A Man After Midnight)', 4.46, 8),
('The Long and Winding Road', 3.37, 1),
('Across the Universe', 3.47, 1),
('Innuendo', 6.27, 3),
('Headlong', 4.33, 3),
('When the Music’s Over', 11.02, 4),
('Moonlight Drive', 3.04, 4),
('Rock and Roll', 3.40, 5),
('The Battle of Evermore', 5.57, 5),
('Stupid Love', 03.13, 9),
('Consequences', 2.58, 10),
('You Know My Name', 4.21, 1);

INSERT INTO ArtistsGenres(genres_id, artists_id) 
VALUES
(1,1),
(2,1),
(2,8),
(3,1),
(3,2),
(4,1),
(5,1),
(4,3),
(4,5),
(5,6),
(5,7),
(2,9),
(2,10);

INSERT INTO AlbumsArtists(albums_id, artists_id) 
VALUES
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,7),
(8,8),
(9,9),
(10,10);

INSERT INTO CompilationsTracks(compilation_id, tracks_id) 
VALUES
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,7),
(8,8),
(1,9),
(1,10),
(3,11),
(3,12),
(4,13),
(4,14),
(5,15),
(5,16),
(9,3),
(10,17),
(11,18),
(12,19);