{{config(materialized='table')}}
with tb1  as(select
    id,
    first_name,
    last_name,

from {{source('mit_shared_schema','stage_customerdate')}})
select * from tb1