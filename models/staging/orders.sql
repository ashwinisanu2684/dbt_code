{{config(materialized='view')}}
with tb1 as(select id,order_date,user_id
from {{source('mit_shared_schema','stage_ordersdate')}})
select *from tb1