select
round(
max(
    case 
    when LAT_N < 137.2345 then LAT_N
    else null
    end
), 4)
from station;