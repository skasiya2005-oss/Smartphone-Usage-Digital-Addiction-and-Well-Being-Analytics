
use smartphone;
SELECT gender, COUNT(*), SUM(CASE WHEN addicted_label = 1 THEN 1 ELSE 0 END) AS addicted_count

FROM smartphone_usage GROUP BY gender;
SELECT AVG(daily_screen_time_hours), AVG(sleep_hours), AVG(stress_level = 'High')

FROM smartphone_usage;
SELECT * FROM smartphone_usage

WHERE age IS NULL OR daily_screen_time_hours IS NULL OR addiction_level IS NULL;
SELECT addicted_label, stress_level, COUNT(*)

FROM smartphone_usage

GROUP BY addicted_label, stress_level

ORDER BY addicted_label, stress_level;
SELECT addiction_level, COUNT(*), AVG(daily_screen_time_hours), AVG(sleep_hours)

FROM smartphone_usage

GROUP BY addiction_level;

