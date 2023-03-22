CREATE TABLE IF NOT EXISTS Genres (
	id SERIAL PRIMARY KEY,
	genre_name VARCHAR(40) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS Artists(
	id SERIAL PRIMARY KEY,
	artist_name VARCHAR(40) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS Albums (
	id SERIAL PRIMARY KEY,
	album_name VARCHAR(80) UNIQUE NOT NULL,
	release_year INTEGER NOT NULL,
	CHECK (release_year > 1900)
);

CREATE TABLE IF NOT EXISTS ArtistsGenres(
	genres_id INTEGER REFERENCES Genres(id),
	artists_id INTEGER REFERENCES Artists(id),
	CONSTRAINT pk PRIMARY KEY (genres_id, artists_id)
);

CREATE TABLE IF NOT EXISTS AlbumsArtists(
	albums_id INTEGER REFERENCES Albums(id),
	artists_id INTEGER REFERENCES Artists(id),
	CONSTRAINT pk_1 PRIMARY KEY (albums_id, artists_id)
);

CREATE TABLE IF NOT EXISTS Tracks(
	id SERIAL PRIMARY KEY,
	track_name TEXT UNIQUE NOT NULL,
	track_duraton FLOAT NOT NULL,
	album_id INTEGER NOT NULL REFERENCES Albums(id)
);

CREATE TABLE IF NOT EXISTS Compilations (
	id SERIAL PRIMARY KEY,
	compilation_name VARCHAR(40) UNIQUE NOT NULL,
	release_year INTEGER NOT NULL,
	CHECK (release_year > 1900)
);

CREATE TABLE IF NOT EXISTS CompilationsTracks (
	compilation_id INTEGER REFERENCES Compilations(id),
	tracks_id INTEGER REFERENCES Tracks(id),
	CONSTRAINT pk_2 PRIMARY KEY (compilation_id, tracks_id)
);