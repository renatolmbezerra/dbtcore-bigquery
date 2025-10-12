{{ config(
    materialized='table'
) }}

WITH spine AS (
    {{ dbt_utils.date_spine(
        datepart="day",
        start_date="'2018-01-01'",
        end_date="'2030-12-31'"
    ) }}
)
SELECT
    date AS date_day
FROM spine
