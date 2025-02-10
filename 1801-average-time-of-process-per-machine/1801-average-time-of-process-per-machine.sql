# Write your MySQL query statement below
SELECT  r.machine_id, round(AVG(r.timest), 3) processing_time from
(Select machine_id, process_id, 
(max(timestamp) - min(timestamp)) timest
from Activity
group by machine_id, process_id) r
group by  machine_id