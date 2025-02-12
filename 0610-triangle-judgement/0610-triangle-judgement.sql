# Write your MySQL query statement below
SELECT *,  
CASE When x + y > z and y + z > x and z + x > y then "Yes"
else "No"
END triangle
FROM Triangle

