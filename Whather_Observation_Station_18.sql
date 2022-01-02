select round((Max(LAT_N)-min(lat_n))+(max(long_w)-min(long_w)),4)
from station
