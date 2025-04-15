{% macro transform_participant(source_table) %}
with src_participant as (
    select
        *
    from {{ ref(source_table) }}
)

select
    *
from src_participant
{% endmacro %}
