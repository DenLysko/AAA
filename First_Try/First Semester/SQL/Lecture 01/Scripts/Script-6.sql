SELECT appname, price, description, languages  
FROM prod.appstore_games ag 
WHERE appname LIKE '%!!%' AND appname NOT LIKE '%!!!%'