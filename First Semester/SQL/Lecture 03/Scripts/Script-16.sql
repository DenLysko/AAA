SELECT 
	user_id, 
	SUM(amount)
FROM prod.transactions_day4 td 
GROUP BY user_id 
HAVING SUM(amount) > 500000

SELECT 
	COUNT(*),
	CASE 
		WHEN amount < 50 THEN 'Little'
		WHEN amount < 500 THEN 'Middle'
		ELSE 'Big'
	END
	type_of_amount
FROM prod.transactions_day4 td 
GROUP BY type_of_amount

SELECT 
	extract(month from dtime) as mnth,
	sum(amount)
FROM prod.transactions_day4 td
GROUP BY mnth
having sum(amount) > 350000

SELECT user_id, sum(not_type_of_amount)
FROM (SELECT 
	user_id,
	CASE
		WHEN amount >= 250 AND amount < 500 THEN 1
		WHEN amount < 250 THEN -1
		ELSE 0
	END not_type_of_amount
FROM prod.transactions_day4 td) AS t2
GROUP BY user_id
HAVING sum(not_type_of_amount) > 0

SELECT 
	user_id,
	COUNT(*)
FROM prod.transactions_day4 td 
GROUP BY user_id
HAVING sum(
	CASE 
		WHEN amount >= 250 AND amount < 500 THEN 1
		WHEN amount < 250 THEN -1
		ELSE 0
	END
	) > 0
