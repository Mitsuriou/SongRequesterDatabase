-- Database
DROP DATABASE IF EXISTS song_requester;

CREATE DATABASE song_requester
    WITH 
    OWNER = athena
    ENCODING = 'UTF8'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;

-- Schema
CREATE SCHEMA sr;
