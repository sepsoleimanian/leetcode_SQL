-- Question Link: https://leetcode.com/problems/average-selling-price/description/?envType=study-plan-v2&envId=top-sql-50
SELECT 
    p.product_id,
    ROUND(COALESCE(SUM(price * units) / NULLIF(SUM(units), 0), 0), 2) AS average_price
FROM Prices p
LEFT JOIN UnitsSold u
    ON p.product_id = u.product_id
   AND u.purchase_date BETWEEN p.start_date AND p.end_date
GROUP BY p.product_id;
