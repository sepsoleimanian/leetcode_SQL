-- Question Link: https://leetcode.com/problems/managers-with-at-least-5-direct-reports/?envType=study-plan-v2&envId=top-sql-50
select e1.name
from Employee as e1
join Employee as e2
on e1.id = e2.managerId
group by e1.id, e1.name
Having count(e2.managerId) >= 5