SELECT appname, size_mb, average_user_rating, price, user_rating_count, original_release_date 
FROM prod.appstore_games ag 
WHERE (size_mb BETWEEN 100 AND 300)
	AND original_release_date > '2018-01-01'
	AND 
		( ((price BETWEEN 1 AND 2) AND average_user_rating > 4) 
		OR (price > 0 AND price < 1 AND average_user_rating > 3 AND user_rating_count > 1000)
		OR (price = 0 AND user_rating_count > 100000))
ORDER BY appname 