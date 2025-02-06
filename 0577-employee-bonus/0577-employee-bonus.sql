/* Write your PL/SQL query statement below */
SELECT name, bonus FROM Employee e LEFT JOIN Bonus b
ON e.empId = b.empId
where bonus < 1000 or bonus IS NULL