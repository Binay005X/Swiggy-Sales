# 6. Find the top 5 restaurants with the highest average rating.

SELECT 
    name AS restaurant_name,
    ROUND(AVG(COALESCE(rating, 0)), 2) AS ratings
FROM
    restaurants
GROUP BY 1
ORDER BY 2 DESC
LIMIT 5;

