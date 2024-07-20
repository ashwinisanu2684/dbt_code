{{ config(
materialized="incremental",
unique_key='id',
incremental_strategy= "delete+insert",
) }}
select * from {{source('mit_shared_schema','stage_customerdate')}} where id in (1,2,3,4,5)
