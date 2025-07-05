{{config(
materialized = 'incremental',
incremental_strategy = 'delete+insert',
unique_key = 'id'
)}}
select * from {{source("stage_to_target_load",'STAGE_ORDER_DATA')}}
where id in (2)