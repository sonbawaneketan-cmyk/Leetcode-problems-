# Write your MySQL query statement below

WITH weekly_meetings AS (
    SELECT
        employee_id,
        YEARWEEK(meeting_date, 3) AS meeting_week,
        SUM(duration_hours) AS total_hours
    FROM meetings
    GROUP BY
        employee_id,
        YEARWEEK(meeting_date, 3)
),
heavy_weeks AS (
    SELECT
        employee_id,
        COUNT(*) AS meeting_heavy_weeks
    FROM weekly_meetings
    WHERE total_hours > 20
    GROUP BY employee_id
    HAVING COUNT(*) >= 2
)
SELECT
    e.employee_id,
    e.employee_name,
    e.department,
    h.meeting_heavy_weeks
FROM employees e
JOIN heavy_weeks h
    ON e.employee_id = h.employee_id
ORDER BY
    h.meeting_heavy_weeks DESC,
    e.employee_name ASC;
