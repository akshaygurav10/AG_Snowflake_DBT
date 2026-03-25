{% macro cent_to_dollar(column_name,precision)%}
    round({{column_name}} / 100,{{precision}})
{% endmacro %}