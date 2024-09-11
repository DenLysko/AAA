select appname, size_mb, average_user_rating, price, user_rating_count 
from prod.appstore_games ag 
where size_mb  > 1000 and price > 0 and average_user_rating <= 3
order by user_rating_count desc 
limit 1