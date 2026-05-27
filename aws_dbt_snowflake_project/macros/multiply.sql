{% macro multiply(col1,col2) %}
    Round({{col1}} * {{col2}},2)
{% endmacro %}
