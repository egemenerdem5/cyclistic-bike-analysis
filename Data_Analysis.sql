-- Types of bike
SELECT member_casual,rideable_type,
COUNT(*) AS total_rides
FROM myfirstproject-469413.Cyclistic_bike_share.cleaned_data
GROUP BY member_casual,rideable_type
ORDER BY member_casual,total_rides DESC;
---- total rides for member with classic bike is the highest (1712435) while lowest (21050) for member with electric_scooter.

-- No. of rides per month
SELECT member_casual, month,
COUNT(*) AS total_rides_per_month
FROM myfirstproject-469413.Cyclistic_bike_share.cleaned_data
GROUP BY member_casual, month
ORDER BY member_casual;

-- No.of rides per day of week 
SELECT member_casual, day_of_week, COUNT(*) AS total_rides_per_week
FROM myfirstproject-469413.Cyclistic_bike_share.cleaned_data
GROUP BY member_casual,day_of_week
ORDER BY member_casual

-- No. of trips per hour
