{% macro transform_encounter(source_table) %}
WITH src_participant AS (
    SELECT
        *
    FROM {{ ref(source_table) }}
)

SELECT
    *
FROM src_participant
{% endmacro %}
