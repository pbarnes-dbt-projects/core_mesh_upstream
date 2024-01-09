 {{ config(materialized='table') }}

with source_data as (

    select * from {{ source('tpch','customer') }} 
)

select *
from source_data
