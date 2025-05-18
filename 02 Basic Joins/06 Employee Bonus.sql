-- Question Link: https://leetcode.com/problems/employee-bonus/description/?envType=study-plan-v2&envId=top-sql-50
SELECT e.name, b.bonus
FROM employee as e
LEFT JOIN bonus b on e.empId = b.empId
WHERE bonus < 1000 OR bonus IS NULL