/* Write your PL/SQL query statement below */
SELECT w1.id
FROM Weather w1, Weather w2
WHERE w1.recorddate - 1 = w2.recorddate AND w1.temperature > w2.temperature;