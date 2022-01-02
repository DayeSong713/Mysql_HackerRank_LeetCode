select weather.id as Id
from Weather 
inner join weather as nextday on
weather.recorddate=date_add(nextday.recorddate,interval 1 day)
where weather.temperature>nextday.temperature
