-- Check the number of null values in each column 
SELECT
  SUM(CASE WHEN ride_id IS NULL THEN 1 ELSE 0 END) AS nullcount_ride_id,
  SUM(CASE WHEN rideable_type IS NULL THEN 1 ELSE 0 END) AS nullcount_rideabletype,
  SUM(CASE WHEN started_at IS NULL THEN 1 ELSE 0 END) AS nullcount_started_at,
  SUM(CASE WHEN ended_at IS NULL THEN 1 ELSE 0 END) AS nullcount_ended_at,
  SUM(CASE WHEN start_station_name IS NULL THEN 1 ELSE 0 END) AS nullcount_start_station_name,
  SUM(CASE WHEN start_station_id IS NULL THEN 1 ELSE 0 END) AS nullcount_start_station_id,
  SUM(CASE WHEN end_station_name IS NULL THEN 1 ELSE 0 END) AS nullcount_end_station_name,
  SUM(CASE WHEN end_station_id IS NULL THEN 1 ELSE 0 END) AS nullcount_end_station_id,
  SUM(CASE WHEN start_lat IS NULL THEN 1 ELSE 0 END) AS nullcount_start_lat,
  SUM(CASE WHEN start_lng IS NULL THEN 1 ELSE 0 END) AS nullcount_start_lng,
  SUM(CASE WHEN end_lat IS NULL THEN 1 ELSE 0 END) AS nullcount_end_lat,
  SUM(CASE WHEN end_lng IS NULL THEN 1 ELSE 0 END) AS nullcount_end_lng,
  SUM(CASE WHEN member_casual IS NULL THEN 1 ELSE 0 END) AS nullcount_member_casual,
FROM myfirstproject-469413.Cyclistic_bike_share.cyclistic_data;
--Null values: 
--Start station name = 1073951 values
--Start station id = 1073951 values
--End station name = 1104653 values
--End station id = 1104653 values
--End lat = 7232 values 
--End lng = 7232 values

-- Explore data one by one from left column to right column

-- 1) rider_id: the length of the rider id should be uniform 
SELECT LENGTH(ride_id) as rider_id_length 
FROM myfirstproject-469413.Cyclistic_bike_share.cyclistic_data
GROUP BY LENGTH(ride_id); 
-- the ride_id is consistent with 16 characters.

-- 2) rideable_type: determine the type of bikes 
SELECT rideable_type 
FROM myfirstproject-469413.Cyclistic_bike_share.cyclistic_data
GROUP BY rideable_type
-- there are three types of bike: classic bike, electric bike, and electric scooter.

-- 3) started_at, ended_at: ride duration
SELECT ride_id, started_at, ended_at
FROM myfirstproject-469413.Cyclistic_bike_share.cyclistic_data
WHERE 
TIMESTAMP_DIFF(ended_at, started_at, MINUTE) <= 1 OR
TIMESTAMP_DIFF(ended_at, started_at, MINUTE) >= 1440
-- check if the ride time is less than a minute or longer than a day 
-- the end time is behind the start time
-- TIMESTAMP is in YYYY-MM-DD hh:mm:ss UTC format 

-- 4) name & id of start_station and end_station






















