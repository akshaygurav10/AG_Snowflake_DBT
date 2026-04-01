{% macro full_name(fname, lname) %}
    concat({{fname}},' ',{{lname}})
{% endmacro %}