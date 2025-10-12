# Cyclistic Bike-Share Analysis Case Study
## 🚀 Introduction
 Data analysis project from Google Data Analytics Capstone on Coursera. In this project, I will implement the data analysis process which consists of six stage: **ask**, **prepare**, **process**, **analyze**, **share**, and **act** to analyze the data.


## 📖 Scenario
  Cyclistic is a Chicago-based bike-share company that launched its program in 2016 and has since grown significantly. Today, it operates a fleet of 5,824 bicycles across 692 geotracked stations throughout the city. This extensive network allows customers to rent a bike from one station and return it to any other, making cycling a convenient transportation option and contributing to the program’s success.

The company’s marketing efforts have primarily focused on raising general awareness and appealing to broad consumer segments. Cyclistic offers flexible pricing plans, including single-ride passes, full-day passes, and annual memberships, catering to the diverse needs of its users. In addition, the company provides accessible bike options, such as reclining bikes, hand tricycles, and cargo bikes, welcoming individuals with disabilities and those who cannot use standard two-wheeled bikes. While most users ride for leisure, around 30% use the service to commute, and about 8% choose the assistive bike options.

The marketing director believes that future growth relies on increasing annual memberships. To support this goal, my team and I aim to analyze how casual riders and annual members use Cyclistic bikes differently. These insights will guide the development of targeted marketing strategies to convert casual riders into loyal annual members.

## 📊 The Data Analysis Process
  ### 1. Ask - Defining the problem 
  These three questions will guide the future marketing program:
  1. How do annual members and casual riders use Cyclistic bikes differently?
  2. Why would casual riders buy Cyclistic annual memberships?
  3. How can Cyclistic use digital media to influence casual riders to become members?

  Our business task is to identify how annual members and casual riders use Cyclistic bikes differently. Understanding how these two different customer profiles interact with the company’s offerings is key to designing effective marketing strategies that convert      casual riders to annual memberships while using data to drive these decisions and fuel the company’s future growth.

### 2. Prepare - Data Collection 
We will be using Cyclistic’s historical trip data to analyze and identify trends. The dataset consists of CSV files detailing every ride logged by Cyclistic customers, ranging from April 2020 to August 2025. For the purpose of this case study, we will focus on data from the most recent 12 months, January 2024 to December 2024. The data has been made available by Motivate International Inc. under [this license](https://divvybikes.com/data-license-agreement).

#### Data Source: [divy-tripdata](https://divvy-tripdata.s3.amazonaws.com/index.html)
#### Tools: 
 - Data cleaning & processing - Excel and SQL on Google Big Query
 - Data visualization - Tableau

 ### 3. Process - Cleaning and manipulating the data 
 Processing data is crucial for ensuring that the dataset is clean, consistent, and free of errors, allowing us to generate accurate insights that support effective decision-making. 

 First of all, I want to state that Since we have such a large volume of data, using SQL/BigQuery might be more efficient as we continue to process and clean our data, but nevertheless I would like to share with you some quick analysis performed on Excel Which proves that an effective analysis could be performed by asking right questions and focusing on relevant information about business task. 

 1-) First, I combined and transformed the 12 csv files on a single sheet in power query editor which based on monthly data on 2024. 
 
 2-) Then We got 13 Column which are (ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng, and member_casual) (We will explained them more detailed after we passed the Sql). 
 
 3-) Now, In order to get insight about how casual and annual members differentiate each other I primarily want to focus on which month, day (of the week), and hour they used these bikes and how long do they perform on single ride, so I created columns from started_at variable for each of the data variable I want to create(month,day...). Due to data redundancy I bucketed the data based on the ride length as ( Under 10 min, between 10 and 30 min , and over 60 min). Then I deleted the columns except rideable_type, member_casual, month, Day name, Hour, and Custom. Finally I grouped the rows in a column called Count.




  <img width="1165" height="991" alt="Ekran görüntüsü 2025-10-01 142600" src="https://github.com/user-attachments/assets/9a27f395-deaf-4626-a15a-24566c5260a6" />

 4-) After that cleaning process I execute some visualizations by using pivot charts down below.
 
 <img width="2457" height="1664" alt="Picture3" src="https://github.com/user-attachments/assets/d4e942ea-8506-4ce5-a2d1-01565b2db8be" />
 <img width="2756" height="1664" alt="Picture4" src="https://github.com/user-attachments/assets/08bf6d42-244f-485f-89ea-73c92a151b30" /> 
 <img width="3048" height="1770" alt="Picture5" src="https://github.com/user-attachments/assets/86f1c5f8-0ac3-4fde-9644-24f5ac991d40" />
 <img width="3048" height="1770" alt="Picture6" src="https://github.com/user-attachments/assets/c5279e76-ea49-42c0-9912-c7908fcadb51" />


 5-) We can reach some beneficial outcomes based on these visuals,
 
    First as we can see it's obvious that members usually prefer to ride on summer months and they least prefer to ride on winter months especially on january.
    Secondly casual members usually prefer to ride on weekend in contrast annual members ride more on week days.
    On the third graph we notice that annual members mostly take a ride between 7 pm and 17 pm meanwhile casual members take ride between 12-18 pm with mostly equally distributed. 
    Last but not least, when we check for the sum of the hour the trips taken by members. Annual members use for short trips mostly under 10 minutes, Casual members mostly use for between 10 to 30 minutes. 

     
   In conclusion, We can reach such a outcome that casual members usually take rides for leisure meanwhile annual members use these bikes for commuting their work and based on the months we can quickly state if company plans to start a campaign they should make it on summer rather than winter. As you can see even though this superficial analysis on excel we could managed to have some vital information about this business problem and have some solution about it. 

 Now let's move on to the process stage with SQL, the basis for the 2024 data and the steps for processing the data are as follow: 
 
 1.[Data Combining](https://github.com/egemenerdem5/cyclistic-bike-analysis/blob/main/Data_Combining.sql) 
 
 2.[Data Exploration](https://github.com/egemenerdem5/cyclistic-bike-analysis/blob/main/Data_Exploration.sql) 
 
 3.[Data Cleaning](https://github.com/egemenerdem5/cyclistic-bike-analysis/blob/main/Data_Cleaning.sql) 
 
 4.[Data Analysis](https://github.com/egemenerdem5/cyclistic-bike-analysis/blob/main/Data_Analysis.sql) 

 ### Data Combining 
  The 12 tables from January 2024 to December 2024 were stacked and combined into a single table.The table composed of 5,860,568 rows.

### Data Exploration 
  I ran the queries for each column from left to right in order to determine the data type and to uncover any missing values, outliers, inconsistencies, and errors within the dataset.

  The data set consists of **13 variables**, as shown in the following:
  | No | Variable | Description | Type |
  | :--- | :---: | :---: | :---: |
  | 1 | ride_id | Unique ID assigned to each ride | STRING |
  | 2 | rideable_type | classic, docked, or electric | STRING | 
  | 3 | started_at | Date and time at the start of trip | TIMESTAMP |
  | 4 | ended_at | Date and time the end of trip | TIMESTAMP |
  | 5 | start_station_name | Name of the station where the ride journey started from | STRING |
  | 6 | start_station_id	 | ID of the station where the ride journey started from | STRING |
  | 7 | end_station_name	 | Name of the station where the ride trip ended at | STRING |
  | 8 | end_station_id	| ID of the station where the ride trip ended at | STRING |
  | 9 | start_lat | Latitude of starting station | FLOAT |
  | 10 | start_lng | Longitude of starting station | FLOAT |
  | 11 | end_lat	| Latitude of ending station | FLOAT |
  | 12 | end_lng | Longitude of ending station | FLOAT |
  | 13 | member_casual | Type of membership of each rider | STRING |

### Data Cleaning 
  Before analyzing the data,the dataset was cleaned by: 
  - Removing the trips with **null values**.
  - Adding 3 columns: **'ride_length_in_mins', 'day_of_week'** and **'month'**.
  - Exclusing the **rides with duration less than a minute** or **longer than a day**.

  In total, 4,095,232 rows were returned, which means **1,765,336 rows were removed**. 

 ### 4. Analyze - Identifying the patterns 
  In order to get a better understanding from our data, it is important to identify how our data can help us determine the patterns between annual and casual members in their bike usage.
  - **Total trips taken** 
  - **Types of bicycles used**
  - **The length and location of bike trips**

  We will start by looking at the total trips taken by Cyclistic bike users. When we run our query, we can see that:      
   **62.67%** of bikes users are annual members while **37.33%** of bikes users are casual riders.

  We can further explore the data by looking at the specific instances in which these trips were taken (e.g., hour, day of the week, month, year). For this analysis, we will only be focusing on the first three variables as we only have a year’s worth of data.

 **Trips Taken by the Month**
 Specifically looking at the monthly data, we can see that: 
 - Annual members recorded the highest number of bike trips in **September 2024**, with 312,879 trips (**7.492%**), and the lowest in **January 2024**, with 90,781 trips (**2.192%**).
 - Casual riders recorded the highest number of bike trips in **July 2024**, with 227,684 trips (**5.753%**), and the lowest in **January 2024**, with 17,108 trips (**0.435%**).
 - Both types of users recorded a higher number of trips in summer months (**21.03%** for annual members and **16.512%** for casual riders) and a lower number of trips in winter months (**8,05%** for annual members and **2.061%** for casual riders).

 **Trips Taken by the Day of the Week** 
 When we look at the weekly data, we can observe that: 
 - Annual members used the bike-share program more frequently on **Wednesdays** at 433,388 trips (**10.788%**) and the least on **Sundays** at 286,684 trips (**6.594%**).
 - Casual riders used the bike-share program more frequently on **Saturdays** at 310,841 trips (**7.776%**) and the least on **Tuesdays** at 159,552 trips (**3.832%**).
 - Both customer types used the service more frequently on weekdays (Mon-Fri), but as a whole, casual riders had a higher usage rate on **weekends** (Sat-Sun) at **38.35%** compared to annual members at **23.40%**.

**Trips Taken by the Hour** 
 If we look at the daily trips, we can determine that:
- Annual members used Cyclistic bikes more frequently at **5 PM** at 286,406 trips (**10.99%**), and the least at **3 AM** at 4,020 trips (**0.15%**).
- Casual member used Cyclistic bikes more frequently at **5 PM** at 143,904 trips (**9.66%**), and the least at **4 AM** at 3,593 trips (**0.24%**).
- However, when we look at the weekly data along with the hourly data, we can see some patterns where there is a high level of bike trip activity from **4 PM — 5 PM on Tuesdays, Wednesdays, and Thursdays** for annual members and **12 PM — 3 PM on Saturdays** for casual riders.

**Types of Bicycles Used** 


      
   

     
     








  
   
  
  
  
    


