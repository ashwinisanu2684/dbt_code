{{config (materialized="incremental",

         incremental_strategy="append",
        )}}

        select * from {{source('mit_shared_schema','stage_ordersdate')}} where id in(1,2,5)