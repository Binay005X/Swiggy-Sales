# 4. Display the total number of orders placed by each customer.

SELECT 
    c.customer_id,
    c.name,
    COUNT(o.order_id) AS total_orders_placed
FROM
    customers c
        JOIN
    orders o ON c.customer_id = o.customer_id
GROUP BY 1 , 2
ORDER BY 3 desc;

