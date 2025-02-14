# Write your MySQL query statement below
SELECT customer_id from customer
group by customer_id
having count(distinct product_key) = 
(Select count(*) from Product)

