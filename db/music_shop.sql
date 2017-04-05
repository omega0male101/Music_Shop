DROP TABLE albums;
DROP TABLE artists;
DROP TABLE genres;


CREATE TABLE artists (
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255),
  bio TEXT
  );

CREATE TABLE genres (
  id SERIAL8 PRIMARY KEY,
  type VARCHAR(255)
  );

CREATE TABLE albums (
  id SERIAL8 PRIMARY KEY,
  title VARCHAR(255),
  artist_id INT4 REFERENCES artists(id) ON DELETE CASCADE,
  genre_id INT4 REFERENCES genres(id) ON DELETE CASCADE,
  artwork TEXT,
  quantity INT2,
  sold INT2,
  price INT2
  );