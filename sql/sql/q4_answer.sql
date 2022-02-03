SELECT COUNT(DISTINCT s.salesforce_id) AS sales_id
FROM (
	SELECT u.salesforce_id, COUNT(DISTINCT u.search_type)
	FROM usage AS u
		CROSS JOIN (SELECT MAX(usage_date) AS max_date FROM usage) AS m
	WHERE u.usage_date > m.max_date - interval '30 day'
	GROUP BY u.salesforce_id
	HAVING COUNT(DISTINCT u.search_type) >= 3 
) AS s
-- Cross Joined the latest date to compare with the dates and extract the data within 30 days of the dataset
-- Then, extracted the records that have performed 3 or more search types, and counted the disticnt number of the accounts

-- 100 accounts have performed 3 or more searchtypes in the last 30days of the dataset