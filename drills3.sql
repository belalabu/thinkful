WITH rainy as 
(
SELECT 
DATE(date) rain_date
From weather
WHERE events = 'Rain'
GROUP BY 1
)
SELECT
t.trip_id,
t.duration,
DATE(t.start_date)
FROM trips t
JOIN rainy r
on DATE(t.start_date) = r.rain_date
ORDER BY duration DESC
LIMIT 3



SELECT
status.station_id,
stations.name,
COUNT(CASE WHEN docks_available=0 then 1 END) empty_count
FROM status
JOIN stations
on stations.station_id = status.station_id
GROUP BY 1,2
ORDER BY empty_count DESC



SELECT
start_station,
dockcount,
COUNT(*)
FROM trips
JOIN stations
ON stations.name=trips.start_station
GROUP BY 1, 2
ORDER BY 2 DESC
