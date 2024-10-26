-- VIDEO GAMES SALES- MAVEN ANALYTICS DATA.

SELECT *
FROM Video_Game_Sales

--1.Total Sales

SELECT 
     SUM(Global_sales) as Total_Sales
FROM Video_Game_Sales

--2.Copies of Video Games sold in Millions per Year.

SELECT YEAR(Release_Date) as Yr, SUM(Global_sales) as copies_sold
FROM Video_Game_Sales
GROUP BY YEAR(Release_Date)
ORDER BY 2 DESC

--3.Top 10 Selling Games of All time.

SELECT TOP 10 Title,
      SUM(Global_sales) as Copies_sold
FROM Video_Game_Sales
GROUP BY Title
ORDER BY 2 DESC

--4.Genre Popularity.

SELECT TOP 10 Genre,
      SUM(Global_sales) as Copies_sold
FROM Video_Game_Sales
GROUP BY Genre
ORDER BY 2 DESC

--5.Sales Distributions by Regions
--North_America_sales

SELECT 
      SUM(North_America_sales) as NA_Sales
FROM Video_Game_Sales

--Japan_sales

SELECT 
      SUM(Japan_sales) as Japan_sales
FROM Video_Game_Sales

--Europe & Africa Sales

SELECT 
      SUM(Europe_Africa_Sales) as EA_sales
FROM Video_Game_Sales

--Rest of the world sales.

SELECT 
      SUM(Rest_of_World_Sales) as Rest_of_the_world
FROM Video_Game_Sales

--6.Publishers' Performance.

SELECT Publisher,
      SUM(Global_sales) as Copies_sold
FROM Video_Game_Sales
GROUP BY Publisher
ORDER BY 2 DESC


--7.Console Pupularity

SELECT Console,
      SUM(Global_sales) as Copies_sold
FROM Video_Game_Sales
GROUP BY Console
ORDER BY 2 DESC

--8.Sales by Developer.

SELECT Developer,
      SUM(Global_sales) as Copies_sold
FROM Video_Game_Sales
GROUP BY Developer
ORDER BY 2 DESC

--9.Critics score vs Title

SELECT Title,
ROUND(AVG(Critic_score),2) as avg_critic_score
FROM Video_Game_Sales
GROUP BY Title
Order by 2 desc

--Top Rated Games.

SELECT TOP 10 Title,
      ROUND(AVG(Critic_score),2) as avg_critic_score
FROM Video_Game_Sales
GROUP BY Title
ORDER BY 2 DESC



















