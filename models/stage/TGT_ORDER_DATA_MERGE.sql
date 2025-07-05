{{config(
materialized = 'incremental',
incremental_strategy = 'merge'
)}}
select * from {{source("stage_to_target_load",'STAGE_ORDER_DATA')}}