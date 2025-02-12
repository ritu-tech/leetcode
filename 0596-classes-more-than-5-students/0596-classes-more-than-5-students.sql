# Write your MySQL query statement below
SELECT r.class class FROM
(
SELECT class, count(student)
FROM Courses
group by class 
having count(student) >= 5
) r