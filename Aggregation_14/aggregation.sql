select round(LONG_W, 4)
from station 
where LAT_N = (select  min(LAT_N) from station where LAT_N > 38.7780);