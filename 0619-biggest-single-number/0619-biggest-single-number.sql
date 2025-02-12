# Write your MySQL query statement below
select max(r.num) num from
(select num, count(*) from MyNumbers
group by num
having count(*) = 1) r