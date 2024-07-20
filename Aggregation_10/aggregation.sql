select
ROUND(
SUM(case
when s.LAT_N > 38.7880 AND s. LAT_N < 137.2345 then s.LAT_N
else 0
end), 4)
from station s;