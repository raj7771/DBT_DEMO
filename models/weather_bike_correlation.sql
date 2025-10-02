WITH CTE AS (
    SELECT t.*, w.* from
    {{ ref('trip_fact') }} t
    left join {{ ref('daily_weather') }} w
    on t.TRIP_DATE = w.DAILY_WEATHER
    limit 100
)

select * from CTE