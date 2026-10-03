-- Per-minute summary of speed, RPM and flagged anomalies
SELECT strftime('%H:%M', time) AS minute,
       ROUND(AVG(speed), 1) AS avg_speed,
       ROUND(MAX(speed), 1) AS max_speed,
       ROUND(AVG(rpm), 0)   AS avg_rpm,
       ROUND(MAX(rpm), 0)   AS max_rpm,
       SUM(anomaly)         AS anomalies
FROM signals
GROUP BY minute
ORDER BY minute;