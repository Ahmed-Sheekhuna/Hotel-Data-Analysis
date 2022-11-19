with hoteli as (
select * from dbo.['2018$']
union
select * from dbo.['2019$']
union
select * from dbo.['2020$'])

-- joining market segment table and meal_cost to hotel table
select * from hoteli
left join dbo.market_segment$
on hoteli.market_segment = market_segment$.market_segment
left join 
dbo.meal_cost$
on meal_cost$.meal = hoteli.meal