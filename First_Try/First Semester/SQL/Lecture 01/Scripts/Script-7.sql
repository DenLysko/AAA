SELECT appname, price, description, languages
FROM prod.appstore_games ag 
WHERE appname ILIKE '%russia%' AND languages NOT ILIKE '%RU%'