select 
	*
from prod.appstore_games ag 
order by original_release_date desc


select
	current_date - current_version_release_date
from prod.appstore_games ag 
where appname = 'Block Soldier Sniper'
