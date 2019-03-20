SELECT
    trip_id,
    start_date
FROM
    trips
WHERE 
    duration > 500
ORDER BY duration DESC
