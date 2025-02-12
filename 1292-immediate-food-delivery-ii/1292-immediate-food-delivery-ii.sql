# Write your MySQL query statement below
SELECT round(count(IF(status = "immediate",1, NULL))/Count(*)*100, 2) immediate_percentage
FROM
(
SELECT customer_id, if(min(customer_pref_delivery_date) = min(order_date), "immediate", "scheduled") status
FROM Delivery
group by customer_id
) as s

