{{config(
    materialized = 'incremental',
    incremental_strategy = 'append'
    )}}
select * from {{source("stage_to_target_load",'STAGE_ORDER_DATA')}}