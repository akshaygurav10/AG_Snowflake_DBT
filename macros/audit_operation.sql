{%  macro insert_audit(action_name) %}
    
    insert into raw.jaffle_shop.dbt_audit (audit_type) values ('{{action_name}}');

{% endmacro %}