{{config(materialized="incremental",
         incremental_strategy= "insert_overwrite",
        )}}

    select * from {{source('mit_shared_schema','stage_customerdate')}}