{{ config(materialized='table', schema='aecom_data') }}

SELECT 
    study_code::text as "study_code",
    study_title::text as "study_title",
    program::text as "program",
    study_description::text as "study_description",
    principal_investigator_name::text as "principal_investigator_name",
    study_contact_name::text as "study_contact_name",
    study_contact_institution::text as "study_contact_institution",
    study_contact_email::text as "study_contact_email",
    vbr_email::text as "vbr_email",
    vbr_url::text as "vbr_url",
    vbr_readme::text as "vbr_readme",
    research_domain::text as "research_domain",
    participant_lifespan_stage::text as "participant_lifespan_stage",
    selection_criteria::text as "selection_criteria",
    study_design::text as "study_design",
    clinical_data_source_type::text as "clinical_data_source_type",
    data_category::text as "data_category",
    study_website::text as "study_website",
    dbgap::text as "dbgap",
    publication::text as "publication",
    expected_number_of_participants::text as "expected_number_of_participants",
    guid_type::text as "guid_type",
    guid_mapped::text as "guid_mapped",
    acknowledgments::text as "acknowledgments",
    citation_statement::text as "citation_statement"
FROM {{ ref('aecom_stg_study') }}

