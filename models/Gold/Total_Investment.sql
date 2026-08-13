{{ config(
    materialized='table'
) }}
WIth TI as 
(
SELECT 
FUND_NAME,
(INITIAL_INVESTMENT+SUBSEQUENT_INVESTMENT) as Total_Investment
 from {{ref('cleaned_data')}}
)
select Total_Investment, FUND_NAME from TI order by Total_Investment desc