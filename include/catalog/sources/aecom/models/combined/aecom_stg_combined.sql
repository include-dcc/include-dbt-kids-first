{{ config(materialized='table') }}

with source as (
    select
       "Participant ID"::text as "participant_id",
       "Study Code"::text as "study_code",
       "dbGaP"::text as "dbgap",
       "DS Status"::text as "ds_status",
       "Gender"::text as "gender",
       "Ethnicity"::text as "ethnicity",
       "Race"::text as "race",
       "Exact Age"::text as "exact_age",
       "AHI"::text as "ahi",
       "OI"::text as "oi",
       "ID"::text as "id",
       "Axial"::text as "axial",
       "Saggital"::text as "saggital",
       "Coronal"::text as "coronal",
       "MRI Quality"::text as "mri_quality",
       "Remarks"::text as "remarks"
    from {{ ref('aecom_src_combined') }}
)

select 
    *,
    concat(study_code, '-', participant_id) as ftd_key
from source
