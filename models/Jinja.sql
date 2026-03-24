{# Set variables #}
{% set a = 5 %}
{% set y = "Hello" %}

{% set m = ['1','Hello', 'Ice Cream',7] %}

{% set person = {
    'name':'Person_name',
    'age':23,
    'Address':'Person_Address'
} %}

{% set temperature = 50 %}

{% set names = ['Name1', 'name2', 'name3'] %}

SELECT
    {{ a }} AS number_value,
    '{{ y }}' AS text_value,
    {{ m[3] }} AS list_value,
    {{ m | length }} AS list_length,
    '{{ person.name }}' AS person_name,

    {% if temperature > 70 %}
        'a refreshing mango sorbet' AS weather_choice,
    {% else %}
        'ice cream' AS weather_choice,
    {% endif %}

    {% for i in names %}
        '{{ i }}' AS name_{{ loop.index }}{% if not loop.last %},{% endif %}
    {% endfor %}