{% macro transform_study(source_table) %}
with src_study as (
    select
        *
    from {{ ref(source_table) }}
)
select * from src_study
{% endmacro %}
