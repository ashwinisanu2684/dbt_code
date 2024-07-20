{{ config(
materialized="incremental",
unique_key='id',

incremental_strategy= "merge"
) }}
select * from {{source('mit_shared_schema','stage_customerdate')}} where id in (1,2,3)
