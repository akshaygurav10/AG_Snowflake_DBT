{% macro select_except(relation, exclude_cols) %}

    {% set cols = adapter.get_columns_in_relation(relation) %}

    {% for col in cols %}
        {% if col.name not in exclude_cols %}
            {{ col.name }}{% if not loop.last %}, {% endif %}
        {% endif %}
    {% endfor %}

{% endmacro %}