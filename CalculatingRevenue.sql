With hotels as (
SELECT * 
FROM dbo.['2018$']
UNION
SELECT * 
FROM dbo.['2019$']
UNION
SELECT * 
FROM dbo.['2020$'])

SELECT 
arrival_date_year,
hotel,
round(sum ((stays_in_week_nights+stays_in_weekend_nights)*adr),2) as Revenue 
FROM hotels -- to calculate the revenue 
GROUP BY arrival_date_year,hotel
