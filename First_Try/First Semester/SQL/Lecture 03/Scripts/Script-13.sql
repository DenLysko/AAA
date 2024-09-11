SELECT 
COUNT(*) - least(COUNT(open), 
				 COUNT(high),
			     COUNT(low))
			     as greatest
FROM prod.stocks s 

SELECT sum(open) / COUNT(open) as avg_open_price
FROM prod.stocks s 

SELECT max(close - open)
FROM prod.stocks s 

SELECT * FROM generate_series(1,10)

SELECT random() 


SELECT count(CASE 
	WHEN ceil % 3 = 0 THEN 1
END
)::decimal / (count(*)::decimal)
FROM(
	SELECT (random()*100) :: int + 1 as ceil
	FROM generate_series(1, 10000002)
) as ceil

