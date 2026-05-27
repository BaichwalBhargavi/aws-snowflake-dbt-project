{% macro trim(col_name,node)%}
{{col_name | trim | upper}} as {{col_name}}
{% endmacro %}
