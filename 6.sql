-- In 6.sql, write a SQL query to determine the average rating of all movies released in 2012.
-- Your query should output a table with a single column and a single row (not counting the header) containing the average rating.
SELECT AVG(rating) AS average_rating
FROM movies
JOIN ratings ON movies.id = ratings.movie_id
WHERE year = 2012;

-- cat 6.sql | sqlite3 movies.db > output.txt
