SELECT 
	genres,
	UPPER(REGEXP_REPLACE(genres, '(?<=[A-z][A-z])[A-z]', '', 'g'))
from prod.appstore_games ag 