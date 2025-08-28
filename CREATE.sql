CREATE TABLE IF NOT EXISTS Genre (
    genre_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS Artist (
    artist_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS Album (
    album_id SERIAL PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    release_year INT
);

CREATE TABLE IF NOT EXISTS Track (
    track_id SERIAL PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    duration INTERVAL NOT NULL,
    album_id INT NOT NULL REFERENCES Album(album_id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS Collection (
    collection_id SERIAL PRIMARY KEY,
    name VARCHAR(200) NOT NULL,
    year INT
);

CREATE TABLE IF NOT EXISTS ArtistGenre (
    artist_id INT NOT NULL REFERENCES Artist(artist_id) ON DELETE CASCADE,
    genre_id INT NOT NULL REFERENCES Genre(genre_id) ON DELETE CASCADE,
    PRIMARY KEY (artist_id, genre_id)
);

CREATE TABLE IF NOT EXISTS ArtistAlbum (
    artist_id INT NOT NULL REFERENCES Artist(artist_id) ON DELETE CASCADE,
    album_id INT NOT NULL REFERENCES Album(album_id) ON DELETE CASCADE,
    PRIMARY KEY (artist_id, album_id)
);

CREATE TABLE IF NOT EXISTS TrackCollection (
    track_id INT NOT NULL REFERENCES Track(track_id) ON DELETE CASCADE,
    collection_id INT NOT NULL REFERENCES Collection(collection_id) ON DELETE CASCADE,
    PRIMARY KEY (track_id, collection_id)
);
