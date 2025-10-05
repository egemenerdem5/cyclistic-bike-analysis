-- Combine data from Jan to Dec 2024 into a single table named cyclistic_data 

CREATE TABLE myfirstproject-469413.Cyclistic_bike_share.cyclistic_data AS ( 
 SELECT * FROM myfirstproject-469413.Cyclistic_bike_share.January 
 UNION ALL 
 SELECT * FROM myfirstproject-469413.Cyclistic_bike_share.February
 UNION ALL 
 SELECT * FROM myfirstproject-469413.Cyclistic_bike_share.March
 UNION ALL 
 SELECT * FROM myfirstproject-469413.Cyclistic_bike_share.April
 UNION ALL 
 SELECT * FROM myfirstproject-469413.Cyclistic_bike_share.May
 UNION ALL 
 SELECT * FROM myfirstproject-469413.Cyclistic_bike_share.June
 UNION ALL 
 SELECT * FROM myfirstproject-469413.Cyclistic_bike_share.July
 UNION ALL 
 SELECT * FROM myfirstproject-469413.Cyclistic_bike_share.August
 UNION ALL 
 SELECT * FROM myfirstproject-469413.Cyclistic_bike_share.September
 UNION ALL 
 SELECT * FROM myfirstproject-469413.Cyclistic_bike_share.October
 UNION ALL
 SELECT * FROM myfirstproject-469413.Cyclistic_bike_share.November
 UNION ALL 
 SELECT * FROM myfirstproject-469413.Cyclistic_bike_share.December
);
