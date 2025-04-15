{% macro transform_condition(source_table) %}
with src_condition as (
    select
        *
    from {{ ref(source_table) }}
)


select
    *
from src_condition c
{% endmacro %}
