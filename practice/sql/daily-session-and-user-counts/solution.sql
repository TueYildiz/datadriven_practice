SELECT
    DATE(session_start) AS session_date,
    COUNT(*) AS total_sessions,
    COUNT(DISTINCT user_id) AS unique_users
FROM user_sessions
GROUP BY DATE(session_start)
ORDER BY session_date ASC;
