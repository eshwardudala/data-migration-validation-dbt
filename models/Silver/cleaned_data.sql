{{ config(
    materialized='table'
) }}
select 
    FUND_SYMBOL, 
    {{validate_numeric('INITIAL_INVESTMENT')}} as INITIAL_INVESTMENT,
    {{validate_numeric('SUBSEQUENT_INVESTMENT')}} as SUBSEQUENT_INVESTMENT,
    FUND_SHORT_NAME AS FUND_NAME
from {{ref('Source')}}