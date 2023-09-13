SELECT appname, genres, original_release_date, average_user_rating 
FROM prod.appstore_games ag 
WHERE genres LIKE '%Puzzle%' AND average_user_rating = 5
ORDER BY original_release_date desc
LIMIT 5