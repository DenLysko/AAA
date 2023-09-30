SELECT AVG(volume) as avg_volume, 
	   month
FROM prod.stocks s 
GROUP BY month  
ORDER BY avg_volume DESC 

SELECT year,
	   month,
       SUM(volume)
FROM prod.stocks s
GROUP BY year, month 
ORDER BY year, month

SELECT COUNT(DISTINCT(month)),
       year
FROM prod.stocks s 
GROUP BY year