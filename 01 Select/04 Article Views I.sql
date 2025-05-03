-- Question Link: https://leetcode.com/problems/article-views-i/description/?envType=study-plan-v2&envId=top-sql-50
SELECT distinct author_id as id
FROM Views
WHERE  author_id = viewer_id
order by id asc