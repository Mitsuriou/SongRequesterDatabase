-- Steps (from a terminal):
-- [1] Execute postgresql.bat
-- [2] Type the password
-- [3] Execute "\i db_creation.sql"
-- [4] Execute database.bat
-- [5] Type the password
-- [6] Execute "\i db_init_script.sql"

-- "USER" TABLE
DROP TABLE IF EXISTS sr.user;

CREATE TABLE sr.user(
	id SERIAL PRIMARY KEY,
	email TEXT NOT NULL,
	nickname TEXT NOT NULL
);

INSERT INTO sr.user VALUES (DEFAULT, 'fred@test.com', 'frederic');
INSERT INTO sr.user VALUES (DEFAULT, 'ana@test.com', 'anabelle');

SELECT * FROM sr.user;
