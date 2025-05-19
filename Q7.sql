# 7. Display all customers who have never placed an order.

SELECT 
    c.customer_id,
    c.name AS customer_name,
    o.order_id AS orders_placed
FROM
    customers c
        LEFT JOIN
    orders o ON c.customer_id = o.customer_id
WHERE
    o.order_id IS NULL;






