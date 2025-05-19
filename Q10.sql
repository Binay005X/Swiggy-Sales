# 10. List all delivery partners who have completed more than 1 delivery

SELECT 
    dp.partner_id,
    dp.name,
    COUNT(od.partner_id) AS delivery_count
FROM
    deliverypartners dp
        JOIN
    orderdelivery od ON dp.partner_id = od.partner_id
GROUP BY 1 , 2
HAVING delivery_count > 1;