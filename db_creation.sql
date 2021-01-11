-- Database
DROP DATABASE IF EXISTS song_requester;

CREATE DATABASE song_requester
    WITH OWNER = athena
    ENCODING = 'UTF8'
    LC_COLLATE = 'fr-FR.utf8'
    LC_CTYPE = 'fr-FR.utf8'
    TEMPLATE = template0
    ;

-- Connect to the created database
\c song_requester athena;

ALTER DATABASE song_requester SET client_encoding = UTF8;
SET client_encoding = UTF8;

-- Schema
CREATE SCHEMA sr;

-- "USER" TABLE
CREATE TABLE song_requester.sr.user(
	id SERIAL PRIMARY KEY,
	email TEXT NOT NULL,
	nickname TEXT NOT NULL
);

INSERT INTO song_requester.sr.user VALUES (DEFAULT, 'fred@test.com', 'FrÉdéric');
INSERT INTO song_requester.sr.user VALUES (DEFAULT, 'ana@test.com', 'Anabelle');
INSERT INTO song_requester.sr.user VALUES (DEFAULT, '', 'Nicolas');
INSERT INTO song_requester.sr.user VALUES (DEFAULT, 'marie@test.ca-ac.com', '');

SELECT * FROM song_requester.sr.user;
