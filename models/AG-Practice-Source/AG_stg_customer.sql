with ag_stg_customer as (
    select * 
from {{ source('ag_source', 'AG_STG_CUSTOMER') }}
)
select * from ag_stg_customer