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

     
   In conclusion, We can reach such a outcome that casual members usually take rides for leisure meanwhile annual members use these bikes for commuting their work and based on the months we can quickly state if company plans to start a campaign they should make it on       summer rather than winter. As you can see even though this superficial analysis on excel we could managed to have some vital information about this business problem and have some solution about it.

      
   

     
     








  
   
  
  
  
    


