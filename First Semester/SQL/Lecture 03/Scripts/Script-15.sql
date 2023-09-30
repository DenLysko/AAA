SELECT MAX(price), 
       MIN(price),
       bedrooms 
FROM prod.kc_house_data khd 
GROUP BY bedrooms

SELECT SUM(sqft_living), 
	   SUM(sqft_lot),
	   yr_built 
FROM prod.kc_house_data khd 
GROUP BY yr_built 
ORDER BY yr_built DESC

SELECT condition,
	   AVG(price)
FROM prod.kc_house_data khd 
WHERE yr_built = 1900 and yr_renovated = 0
GROUP BY condition

SELECT COUNT(*) as countt,
       bedrooms,
       bathrooms,
       floors 
FROM prod.kc_house_data khd 
GROUP BY bedrooms, bathrooms, floors 
ORDER BY countt DESC
LIMIT 3