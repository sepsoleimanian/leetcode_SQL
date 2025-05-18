-- Question Link: https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/description/?envType=study-plan-v2&envId=top-sql-50
SELECT v.customer_id, COUNT(*) AS count_no_trans
FROM Visits AS v
LEFT JOIN Transactions AS t 
ON v.visit_id = t.visit_id
WHERE t.visit_id IS NULL
GROUP BY v.customer_id;
