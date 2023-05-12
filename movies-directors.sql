-- CREATE TABLE movies (
--   movie_id INT PRIMARY KEY AUTO_INCREMENT,
--   title VARCHAR(255),
--   year_released INTEGER,
-- );


-- CREATE TABLE directors (
-- director_id INTEGER PRIMARY KEY AUTO_INCREMENT,
-- first_name VARCHAR(40),
-- last_name VARCHAR(40),
-- country VARCHAR(80)
-- );

-- ALTER TABLE movies DROP COLUMN director;
-- DROP TABLE movies;

-- CREATE TABLE movies (
--    movie_id INTEGER PRIMARY KEY AUTO_INCREMENT,
--    title VARCHAR(120),
--    year_released INTEGER,
--    director_id INTEGER,
--    FOREIGN KEY (director_id) REFERENCES directors(director_id)
-- );



-- SELECT title, year_released
-- FROM movies
-- ORDER BY year_released DESC;

-- SELECT *
-- FROM directors
-- ORDER BY country ASC;


-- SELECT * FROM movies;


-- SELECT movies.title, movies.year_released, directors.first_name, directors.last_name
-- FROM movies
-- INNER JOIN directors
-- ON movies.director_id = directors.director_id
-- ORDER BY last_name ASC;

-- SELECT directors.first_name, directors.last_name
-- FROM directors
-- WHERE directors.director_id IN (SELECT movies.director_id
--                         FROM movies
--                         WHERE movies.title = 'The Incredibles');

-- SELECT directors.last_name, directors.country
-- FROM directors
-- INNER JOIN movies
-- ON movies.director_id = directors.director_id and movies.title="Roma";

-- SELECT directors.last_name, directors.country
-- FROM directors
-- INNER JOIN movies
-- ON movies.director_id = directors.director_id
-- ORDER BY movies.title
-- LIMIT 1;



-- SELECT d.last_name AS director_name, m.title AS movie_title
-- FROM directors AS d
-- INNER JOIN movies AS m
-- ON m.director_id = d.director_id
-- WHERE m.title = "Roma";

-- SELECT movies.title
-- FROM movies
-- INNER JOIN directors
-- ON movies.director_id = directors.director_id
-- WHERE (directors.first_name="Peter") AND (directors.last_name="Jackson");
