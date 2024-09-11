select appname, average_user_rating, user_rating_count 
from prod.appstore_games ag 
order by average_user_rating, user_rating_count DESC
limit 5