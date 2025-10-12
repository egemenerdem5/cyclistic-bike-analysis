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
 Processing data is crucial for ensuring the dataset is clean, consistent, and free of errors. This allows us to generate accurate insights that support effective decision-making.

 While tools like SQL or BigQuery would be more efficient for such a large volume of data, I’d like to share a quick analysis performed in Excel. This demonstrates that effective insights can still be gained by asking the right questions and focusing on the most relevant information for the business task.

 1-) First, I combined and transformed the 12 monthly CSV files from 2024 into a single sheet using the Power Query Editor.
 
 2-) The resulting dataset contained 13 columns, including ride_id, rideable_type, started_at, ended_at, and member_casual. (A more detailed explanation of these columns will follow in the SQL section).
 
 3-) To understand the differences between casual and annual members, I focused on their usage patterns by month, day of the week, hour, and ride length. I extracted new columns for month, day, and hour from the started_at variable.

 4-) To simplify the analysis of ride length, I grouped the data into three distinct buckets: Under 10 minutes, Between 10 and 30 minutes, and Over 60 minutes.

 5-) Finally, I removed redundant columns, keeping only rideable_type, member_casual, month, Day name, Hour, and Custom (for ride length), before grouping the rows to create a Count column for each unique combination.



  <img width="1165" height="991" alt="Ekran görüntüsü 2025-10-01 142600" src="https://github.com/user-attachments/assets/9a27f395-deaf-4626-a15a-24566c5260a6" />

 6-) After that cleaning process I execute some visualizations by using pivot charts down below.
 
 <img width="2457" height="1664" alt="Picture3" src="https://github.com/user-attachments/assets/d4e942ea-8506-4ce5-a2d1-01565b2db8be" />
 <img width="2756" height="1664" alt="Picture4" src="https://github.com/user-attachments/assets/08bf6d42-244f-485f-89ea-73c92a151b30" /> 
 <img width="3048" height="1770" alt="Picture5" src="https://github.com/user-attachments/assets/86f1c5f8-0ac3-4fde-9644-24f5ac991d40" />
 <img width="3048" height="1770" alt="Picture6" src="https://github.com/user-attachments/assets/c5279e76-ea49-42c0-9912-c7908fcadb51" />


 7-) Based on the visuals, we can draw several key conclusions about user behavior.
 
    First, ridership is clearly seasonal, with both member types preferring to ride during the summer months and showing the least activity in winter, especially in January.
    Second, a clear difference emerges in weekly usage: casual members tend to ride more on weekends, while annual members ride more frequently on weekdays.
    Third, an hourly analysis reveals that annual members' rides are concentrated between 7 AM and 5 PM, whereas casual members' rides are more evenly distributed throughout the day, with a peak between 12 PM and 6 PM.
    Finally, when we examine trip duration, we find that annual members primarily take short trips, typically under 10 minutes, while casual members most often take trips lasting between 10 and 30 minutes.

     
This analysis leads to two key conclusions:

1-) Casual members appear to use the service for leisure, while annual members use the bikes for commuting.

2-) The company should focus any new campaigns on the summer months, as this is when ridership is at its peak.

Despite being a preliminary analysis performed in Excel, we were able to extract crucial insights and offer actionable business solutions.

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

Cyclistic offers a range of bicycle types — classic, electric, and docked. Looking at the data, we can identify certain patterns about annual and casual members when it comes to bicycle preference.
- Annual members preferred **classic bikes** over electric bikes. 1.71 million trips (**65.7%**) were taken on classic bikes, compared to 0.87 million trips (**33.5%**) on electric bikes.
- Casual riders also preferred **classic bikes** over the other two options. 0.95 million trips (**64.1%**) were taken on classic bikes, 0.51 million trips (**34.2%**) were taken on electric bikes, and less than 0.03 million trips (**1.7%**) were taken on electric scooters.
- When looking at the specific population of annual members and casual riders, annual members preferred **classic bikes** at a greater percentage than casual riders at **65.7% versus 64.1%**, while casual riders preferred **electric bikes** at a greater percentage at **34.2% versus 33.5%**.

**Trip Duration** 

Now let’s look at how these two groups performed in terms of trip duration 
- On average, annual members had a trip duration of **12.4 minutes**, while casual riders had a trip duration of **23.3 minutes**.
- Annual members had the highest mean trip duration on **Sundays** at **13.8 minutes** and the lowest on **Mondays** at **11.7 minutes**.
- Casual riders had the highest mean trip duration on **Sundays** at **27.6 minutes** and the lowest on **Tuesdays** at **20.5 minutes**.
- Seasonally, we can see that both groups had a greater mean trip duration during warmer months compared to colder months. This is in-line with our analysis on trips taken by the months.

### 5. Share - The art of visualization 
Data visualization is the process of graphically representing our data. It is a way to engage our audience and communicate our findings to tell a story that goes beyond the numbers. It is important that we create effective visuals that allow our audience to take in all the information in an easily digestible manner and draws them to have a conversation with the data.

The following visualizations highlight the differences in patterns and relationships between annual members and casual riders. 

**Insights**

For reference, the orange color symbolizes annual members while the blue color indicates casual riders.
<img width="333" height="203" alt="Sheet 1" src="https://github.com/user-attachments/assets/81e51401-b848-4d15-92f2-effa2270dc2e" /> 

Throughout the year, annual members made up a majority of Cyclistic’s trip activity; however, there is a considerable portion of casual riders that can increase Cyclistic’s growth opportunities if conversion is successful.





<img width="1659" height="817" alt="Sheet 1 (1)" src="https://github.com/user-attachments/assets/175bc2eb-d09d-45e4-8406-379093fc8b42" />

Annual members recorded the highest number of trips in September while casual members recorded the highest number of trips in July. Both groups experienced an increase in ride activity during summer months. This could be due to the recreational nature of bike riding that allows it be more suitable for warmer temperatures which also explains the decrease in trips in winter months. 





<img width="637" height="817" alt="Sheet 1 (3)" src="https://github.com/user-attachments/assets/c26d301b-306e-49ca-ae77-88d2f235b898" />

Although Cyclistic’s population mainly consist of annual members, it is important to note that when looking at the two user groups, a greater proportion of casual riders engaged in bike riding on the weekend compared to the weekday. Annual members could be using bikes more frequently on weekdays for work while casual riders prefer to use the service leisurely.


<img width="1858" height="241" alt="Sheet 1 (4)" src="https://github.com/user-attachments/assets/0132bea3-9a9f-4cbc-a2e1-5caad9978ffb" /> 

Classic bikes for both users seem to be more popular than the other two options. However, there was little data on both annual members and casual members using docked bikes. It might be important to dive deeper into why members are not using **docked bikes**.



<img width="623" height="817" alt="Sheet 1 (5)" src="https://github.com/user-attachments/assets/2fb1435a-baf8-4b21-bb7f-d78bc5400f3d" />

This area graph shows the average duration the two customer types are using the bike service based on the day of the week. Annual members are more consistent throughout the week while there is a noticeable increase in duration on Sunday and Saturday for casual riders. Overall, it seems that casual riders used the bikes for a longer time period than annual members.


### 6. Act -  Making data-driven decisions 
The final phase in our analysis involves applying our insights to help drive solutions and recommendations that are backed by data. Our business task was to identify how the two different customer groups use Cyclistic bikes differently in order to design effective marketing strategies that convert casual riders to annual memberships.

**Recommendations** 

- Introduce a **new annual membership** option that considers the uses of current casual riders. Casual riders seem to prefer using the service as a form of leisure and physical activity, especially on the weekends. The membership would include offerings tailored towards the behaviors of casual riders to encourage them to choose a Cyclistic membership plan.
- **Group Membership Discounts**: Offerdiscounted plans for friends, students, and families can encourage collective memberships. Furthermore, it encourages users to cycle together and strengthen the bonds between people.
- Design a **mobile app** and include **features** such as geotracking of bike locations, mobile bike unlocking, visual aids (carbon emission, total miles rode) and a loyalty rewards program with points and member-only discounts.
- **Survey** the casual rider customer base to get an understanding of their user experience with the service so far and if there are any potential factors that are holding them back from getting an annual membership.
- **Social Media Engagement**: Utilize digital media, including social media platforms, to engage with both casual riders and potential members. Share success stories, testimonials, and user-generated content from Cyclistic members who have benefited from the membership. Create visually appealing content showcasing the joy of cycling during different seasons and scenarios, enticing casual riders to become members.


## 🏁 Conclusion
In short, this analysis provides valuable insights into the preferences and behaviors of Cyclistic members and casual riders. By tailoring strategies to the identified differences and preferences, Cyclistic can effectively convert casual riders into potential members.











      
   

     
     








  
   
  
  
  
    


