# 8. Find the number of orders placed by each customer in 'Mumbai'.

SELECT 
    c.customer_id,
    c.name AS customer_name,
    c.city AS city,
    COUNT(o.order_id) AS orders_placed
FROM
    customers c
        LEFT JOIN
    orders o ON c.customer_id = o.customer_id
WHERE
    c.city = 'Mumbai'
GROUP BY 1 , 2;

