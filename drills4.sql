--What's the most expensive listing? What else can you tell me about the listing?

select
	name,
	room_type,
	price
FROM
	sfo_listings
GROUP BY 1,2,3
ORDER BY 3 DESC;

--Most expensive is $10,000, victorian home, 7500 sq ft, 4 floors, hot tub


--What neighborhoods seem to be the most popular?

select
	neighbourhood,
	availability_365,
	COUNT(availability_365)
FROM
	sfo_listings
GROUP BY 1,2
ORDER BY 2,1 ASC;

--Mission is the most popular with the fewest availabilities

--What time of year is the cheapest time to go to San Francisco? What about the busiest?

??
