SELECT day,  count(day) as number_of_assignments, sum(duration)
from assignments
GROUP by day
ORDER by day;