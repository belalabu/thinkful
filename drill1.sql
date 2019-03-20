SELECT
    trip_id,
    start_date
FROM
    trips
WHERE 
    duration > 500
ORDER BY duration DESC


SELECT
    *
FROM
    stations
WHERE 
    station_id = 84
--ORDER BY duration DESC


SELECT
    MinTemperatureF
FROM
    weather
WHERE 
    precipitationin > 0 AND
	zip = 94301
--ORDER BY duration DESC
