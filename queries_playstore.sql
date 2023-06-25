-- Comments in SQL Start with dash-dash --
SELECT * FROM analytics
--1
SELECT * FROM analytics
    WHERE id = 1880;
--2
SELECT id,app_name FROM analytics
    WHERE last_updated = '2018-08-01';
--3
SELECT category, COUNT(*) FROM analytics
    group by category;
--4
SELECT * FROM analytics
    ORDER BY reviews DESC
    LIMIT 5;
--5
SELECT * FROM analytics
    WHERE rating >= 4.8
    ORDER BY reviews DESC
    LIMIT 1;
--6
SELECT category, avg(rating) FROM analytics
    GROUP BY category
    ORDER BY avg DESC;
--7
SELECT app_name, price, rating FROM analytics
    WHERE rating < 3
    order by price DESC
    LIMIT 1;
--8
SELECT * FROM analytics
    WHERE min_installs <= 50
        and rating IS NOT NULL
    ORDER BY rating DESC;
--9
SELECT app_name FROM analytics
    WHERE rating < 3 AND reviews >= 10000;
--10
SELECT * FROM analytics
    WHERE price BETWEEN 0.1 AND 1
    order BY reviews DESC
    LIMIT 10;
--11
SELECT * FROM analytics
    WHERE last_updated = (select MIN(last_updated) from analytics);

SELECT * FROM analytics
    ORDER BY LIMIT 1;
--12
SELECT * FROM analytics
    WHERE price = (select max(price) from analytics);

SELECT * FROM analytics
    order by price desc limit 1:
--13
SELECT sum(reviews) as "all the reviews" from analytics
--14
select category from analytics
    group by category
    having count(*) > 300;
--15
SELECT app_name, reviews, min_installs,  min_installs / reviews AS proportion
  FROM analytics
  WHERE min_installs >= 100000
  ORDER BY proportion DESC
  LIMIT 1;
