# Write your MySQL query statement below
SELECT p.product_id, 
IFNULL(ROUND(SUM(u.units*p.price)/SUM(u.units), 2), 0) average_price 
FROM Prices p left join UnitsSold u
ON p.product_id = u.product_id AND
u.purchase_date BETWEEN start_date AND end_date
GROUP BY p.product_id