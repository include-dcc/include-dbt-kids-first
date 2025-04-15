{{ config(materialized='table', schema='aecom_data') }}


SELECT 
    c.study_code::text as "study_code",
    'REQUIRED'::text as "participant_global_id",
    c.participant_id::text as "participant_external_id",
    NULL::text as "family_id",
    'Proband-only'::text as "family_type",
    NULL::text as "father_id",
    NULL::text as "mother_id",
    NULL::text as "sibling_id",
    NULL::text as "other_family_member_id",
    'Proband'::text as "family_relationship",
    c.gender::text as "sex",
    CASE c.race
        WHEN 'White/ Caucasian' THEN 'White'
        WHEN 'Multiracial' THEN 'More than one race'
        ELSE c.race 
    END ::text as "race",
    c.ethnicity::text as "ethnicity",
    CASE c.ds_status
        WHEN 'DS' THEN 'T21'
        ELSE 'D21' 
        END ::text as "down_syndrome_status",
    FLOOR(CAST(c.exact_age AS FLOAT) * 365.25)::INTEGER AS "age_at_first_patient_engagement",
    'Enrollment'::text as "first_patient_engagement_event",
    NULL::text as "outcomes_vital_status",
    NULL::INTEGER AS "age_at_last_vital_status"
FROM {{ ref('aecom_stg_combined') }} AS c
