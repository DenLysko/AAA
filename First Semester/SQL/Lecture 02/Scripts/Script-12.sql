SELECT distinct	
	DATE_PART('year', original_release_date)::varchar
FROM prod.appstore_games ag 

SELECT 
	date_trunc('month', original_release_date) 
FROM prod.appstore_games ag 
WHERE 
	date_part('year', original_release_date) = 2015 
	
SELECT 
	 date_trunc(date_trunc('month', current_version_release_date) - date_trunc('month', original_release_date))
FROM prod.appstore_games ag 