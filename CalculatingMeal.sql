With hotels as (
SELECT * 
FROM dbo.['2018$']
UNION
SELECT * 
FROM dbo.['2019$']
UNION
SELECT * 
FROM dbo.['2020$'])

SELECT* FROM hotels
left join market_segment$ 
ON hotels.market_segment = market_segment$.market_segment
left join 
dbo.meal_cost$ 
ON meal_cost$.meal = hotels.meal