/* Write your PL/SQL query statement below */
SELECT customer_id, count(*) count_no_trans FROM Visits v 
where v.visit_id NOT IN (SELECT visit_id from transactions)
group by customer_id
