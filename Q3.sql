# 3. List all customers who have placed at least one order.

SELECT 
    c.customer_id,
    c.name,
    COUNT(o.order_id) AS total_orders_placed
FROM
    customers c
        JOIN
    orders o ON c.customer_id = o.customer_id
GROUP BY 1 , 2
ORDER BY 1;

