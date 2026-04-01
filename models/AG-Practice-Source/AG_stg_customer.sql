with ag_stg_customer as (
    select {{ select_except(ref('stg_customer'), ['CUSTOMER_ID']) }}, {{full_name('first_name','last_name')}} as full_name,
from {{ source('ag_source', 'AG_STG_CUSTOMER') }}
)
select * from ag_stg_customer