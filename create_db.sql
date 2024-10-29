CREATE TABLE IF NOT EXISTS musician (
	id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS genre (
	id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS musiciansgenres (
	musician_id INTEGER NOT NULL REFERENCES musician(id),
	genre_id INTEGER NOT NULL REFERENCES genre(id),
	CONSTRAINT pk1 PRIMARY KEY (musician_id, genre_id)
);

CREATE TABLE IF NOT EXISTS album (
	id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL,
	album_year INTEGER
);

CREATE TABLE IF NOT EXISTS albumsmusicians (
	album_id INTEGER NOT NULL REFERENCES album(id),
	musician_id INTEGER NOT NULL REFERENCES musician(id),	
	CONSTRAINT pk2 PRIMARY KEY (album_id, musician_id)
);

CREATE TABLE IF NOT EXISTS track (
	id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL,
	duration INTEGER NOT NULL,
	album_id INTEGER NOT NULL REFERENCES album(id)
);

CREATE TABLE IF NOT EXISTS collection (
	id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL,
	collection_year INTEGER
);

CREATE TABLE IF NOT EXISTS collectionstracks (
	collection_id INTEGER NOT NULL REFERENCES collection(id),
	track_id INTEGER NOT NULL REFERENCES track(id),	
	CONSTRAINT pk3 PRIMARY KEY (collection_id, track_id)
);
