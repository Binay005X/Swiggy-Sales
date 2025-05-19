# 13. Identify customers who have the same city and have placed orders at the same restaurants, but on different dates.

with cust_orders as 
(select c.customer_id, c.name as customer_name, c.city, o.order_id, o.restaurant_id, o.order_date
from customers c
join orders o
on c.customer_id = o.customer_id)
    
select distinct 
co1.customer_id as customer1_id,
co1.customer_name as customer1_name,
co2.customer_id as customer2_id,
co2.customer_name as customer2_name,
co1.restaurant_id as restaurant_id
from cust_orders co1
join cust_orders co2
on co1.city = co2.city
and co1.restaurant_id = co2.restaurant_id
and co1.customer_id <> co2.customer_id
and co1.order_date <> co2.order_date;
