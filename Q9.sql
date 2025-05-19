# 9. Display all orders placed in the last 30 days.

SELECT 
    c.customer_id, c.name, o.order_id, o.order_date
FROM
    customers c
        LEFT JOIN
    orders o ON c.customer_id = o.customer_id
WHERE
    o.order_date >= '2024-08-15' - INTERVAL 30 DAY
ORDER BY o.order_date;