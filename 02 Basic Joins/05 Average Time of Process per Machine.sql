-- Question Link: https://leetcode.com/problems/average-time-of-process-per-machine/description/?envType=study-plan-v2&envId=top-sql-50
SELECT a1.machine_id as machine_id, round(avg(a2.timestamp - a1.timestamp), 3) as processing_time 
FROM Activity as a1
JOIN Activity as a2
ON a1.machine_id = a2.machine_id AND a1.process_id = a2.process_id
where a2.timestamp > a1.timestamp
group by a1.machine_id