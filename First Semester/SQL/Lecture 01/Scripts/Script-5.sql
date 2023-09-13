SELECT appname, price, description, languages
FROM prod.appstore_games ag 
WHERE description  ILIKE '%Free to play%' AND price > 0