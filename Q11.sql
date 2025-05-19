# 11. Find the customers who have placed orders on exactly three different days.

SELECT 
    c.customer_id,
    c.name,
    COUNT(DISTINCT o.order_date) AS order_days
FROM
    customers c
        LEFT JOIN
    orders o ON c.customer_id = o.customer_id
GROUP BY 1 , 2
HAVING order_days = 3;


