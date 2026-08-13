
{{ config(
    materialized='table'
) }}
with raw as 
(
    select * from {{source('raw','MUTUAL_FUND_DATA')}}
)

select * from raw

