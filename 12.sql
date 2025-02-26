-- In 12.sql, write a SQL query to list the titles of all movies in which both Bradley Cooper and Jennifer Lawrence starred.
-- Your query should output a table with a single column for the title of each movie.
-- You may assume that there is only one person in the database with the name Bradley Cooper.
-- You may assume that there is only one person in the database with the name Jennifer Lawrence.
SELECT title
FROM movies
JOIN stars AS stars1 ON movies.id = stars1.movie_id
JOIN people AS people1 ON stars1.person_id = people1.id
JOIN stars AS stars2 ON movies.id = stars2.movie_id
JOIN people AS people2 ON stars2.person_id = people2.id
WHERE people1.name = "Bradley Cooper" AND people2.name = "Jennifer Lawrence";

-- cat 12.sql | sqlite3 movies.db > output.txt
-- check50 cs50/problems/2025/x/movies
