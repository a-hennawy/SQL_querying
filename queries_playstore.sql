-- Comments in SQL Start with dash-dash --

--Query 1
SELECT app_name FROM analytics WHERE id = 1880;

--Query 2
SELECT id, app_name  FROM analytics WHERE last_updated = '2018-08-01';

--Query 3
SELECT category, COUNT(id) AS num_of_apps FROM analytics GROUP BY category;


--Query 4
SELECT  app_name, reviews FROM analytics ORDER BY reviews DESC LIMIT 5;

--Query 5
SELECT  app_name FROM analytics WHERE rating > 4.8 ORDER BY reviews DESC LIMIT 1;

--Query 6
SELECT category, AVG(rating) AS avg_rating FROM analytics GROUP BY category ORDER BY AVG(rating) DESC;

--Query 7
SELECT app_name, price, rating FROM analytics WHERE rating < 3 ORDER BY price DESC LIMIT 1;


--Query 8
SELECT app_name, min_installs, rating FROM analytics WHERE min_installs <= 50 AND rating IS NOT null  ORDER BY rating DESC;


--Query 9
SELECT app_name, rating FROM analytics WHERE rating < 3 AND reviews >= 10000;

--Query 10
SELECT app_name, price, reviews FROM analytics WHERE price BETWEEN 0.10 AND 1.00 ORDER BY reviews DESC LIMIT 10;

--Query 11
SELECT * FROM analytics WHERE last_updated = (SELECT MIN(last_updated) FROM analytics);

--Query 12
SELECT * FROM analytics WHERE price = (SELECT MAX(price) FROM analytics );

--Query 13
SELECT SUM(reviews) FROM analytics;

--Query 14
SELECT category, COUNT(id) FROM analytics GROUP BY category HAVING COUNT(id)>300  ORDER BY COUNT(id);

--Query 15
SELECT app_name, reviews, min_installs, min_installs/reviews AS proportion FROM analytics WHERE min_installs >= 100000 ORDER BY min_installs/reviews DESC LIMIT 1;



