SELECT EXTRACT(MONTH FROM usage_date) AS "Month", COUNT(DISTINCT salesforce_id) AS accounts_cnt
FROM usage
WHERE EXTRACT(MONTH FROM usage_date) = 11
GROUP BY EXTRACT(MONTH FROM usage_date)

-- 155 accounts had usage in November