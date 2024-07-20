select ROUND(LONG_W, 4)
from station
where LAT_N = (select max(
    case when LAT_N < 137.2345 then LAT_N 
    else null
    end
)
from station);