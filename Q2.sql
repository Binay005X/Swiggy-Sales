# 2. Find the average rating of all restaurants in 'Mumbai'.

SELECT 
    ROUND(AVG(COALESCE(rating,0)), 2) AS avg_rating
FROM
    restaurants
WHERE
    city = 'Mumbai';
    
    