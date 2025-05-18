-- Question Link: https://leetcode.com/problems/product-sales-analysis-i/description/?envType=study-plan-v2&envId=top-sql-50
SELECT p.product_name, s.year, s.price
FROM Sales as s
INNER JOIN Product as p
ON s.product_id = p.product_id