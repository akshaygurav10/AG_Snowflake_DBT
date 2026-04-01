{{
    config(
        materialized='view'
    )
}}
select * from {{ ref('AG_stg_customer') }}