SELECT appname, genres, user_rating_count, average_user_rating
FROM prod.appstore_games ag 
WHERE genres LIKE '%Strategy%' AND genres NOT LIKE '%Puzzle%' AND genres NOT LIKE '%Board%' AND average_user_rating = 5
ORDER BY user_rating_count DESC NULLS LAST
LIMIT 5