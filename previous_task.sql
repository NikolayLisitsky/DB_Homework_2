CREATE TABLE IF NOT EXISTS Singers (
	singer_id SERIAL PRIMARY KEY,
	alias VARCHAR(40) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS Generes (
	genre_id SERIAL PRIMARY KEY,
	name_genre VARCHAR(40) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS Singers_Generes (
	singer_id INTEGER REFERENCES Singers(singer_id),
	genre_id INTEGER REFERENCES Generes(genre_id),
	CONSTRAINT pk_PG PRIMARY KEY (singer_id, genre_id)
);

CREATE TABLE IF NOT EXISTS Albums (
	album_id SERIAL PRIMARY KEY,
	name_album VARCHAR(60) NOT NULL,
	date_album Integer NOT NULL
);

CREATE TABLE IF NOT EXISTS Singers_Albums (
	singer_id INTEGER REFERENCES Singers(singer_id),
	album_id INTEGER REFERENCES Albums(album_id),
	CONSTRAINT pk_PA PRIMARY KEY (singer_id, album_id)
);

CREATE TABLE IF NOT EXISTS Tracks (
	track_id SERIAL PRIMARY KEY,
	name_track VARCHAR(60) NOT NULL,
	duration INTEGER NOT NULL,
	album_id INTEGER REFERENCES Albums(album_id)
);

CREATE TABLE IF NOT EXISTS Collections (
	collection_id SERIAL PRIMARY KEY,
	name_collection VARCHAR(60) NOT NULL,
	year_collection INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS Collections_Tracks (
	collection_id INTEGER REFERENCES Collections(collection_id),
	track_id INTEGER REFERENCES Tracks(track_id),
	CONSTRAINT pk_CT PRIMARY KEY (collection_id, track_id)
);