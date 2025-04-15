{{ config(materialized='table', schema='aecom_data') }}

SELECT 
    c.study_code::text as "study_code",
    'REQUIRED'::text as "participant_global_id",
    c.participant_id::text as "participant_external_id",
    NULL::text as "event_id",
    NULL::text as "event_type",
    c.remarks::text as "condition_or_measure_source_text",
    NULL::INTEGER AS "age_at_condition_or_measure_observation",
    NULL::text as "condition_interpretation",
    NULL::text as "condition_status",
    NULL::text as "condition_data_source",
    NULL::text as "hpo_label",
    NULL::text as "hpo_code",
    NULL::text as "mondo_label",
    NULL::text as "mondo_code",
    NULL::text as "maxo_label"
    NULL::text as "maxo_code",
    NULL::text as "other_label",
    NULL::text as "other_code",
    NULL::INTEGER AS "measure_value",
    NULL::text as "measure_unit"
FROM {{ ref('aecom_stg_combined') }} AS c
