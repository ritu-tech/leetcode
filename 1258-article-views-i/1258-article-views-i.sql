/* Write your PL/SQL query statement below */
SELECT distinct author_id as id FROM Views
WHERE viewer_id = author_id
order by 1