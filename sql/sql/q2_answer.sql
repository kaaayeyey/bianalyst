SELECT RANK() OVER(ORDER BY s.total_quantity DESC) AS "rank", s.*
FROM (
	SELECT EXTRACT(MONTH FROM u.usage_date) AS "Month", ca.country AS "Country", SUM(u.quantity) AS total_quantity
	FROM usage AS u, crm_accounts AS ca
	WHERE u.salesforce_id = ca.account_id
	GROUP BY EXTRACT(MONTH FROM u.usage_date), ca.country
) AS s
ORDER BY RANK() OVER(ORDER BY s.total_quantity DESC) ASC

-- Assuming salesforce_id in usage table is a foreign key for account_id in crm_accounts table, I joined those 2 tables to understand usage.quantity for by month, by country
-- Ranked from most to least total usage quatity by month and by country