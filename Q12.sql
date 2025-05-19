# 12. Find the delivery partner who has worked with the most different customers.

SELECT 
    dp.partner_id, dp.name, COUNT(o.customer_id) AS customers
FROM
    deliverypartners dp
        JOIN
    orderdelivery od ON dp.partner_id = od.partner_id
        JOIN
    orders o ON o.order_id = od.order_id
GROUP BY 1 , 2
ORDER BY 3 DESC
LIMIT 1;