dbt clean
dbt deps  || { echo "Error: dbt deps failed. Exiting..."; exit 1; }
# dbt seed

# src/stg single model dbt command examples
dbt run --select  aecom_src_combined
dbt run --select  aecom_stg_combined
dbt run --select  aecom_src_study
dbt run --select  aecom_stg_study

# FTD single model dbt command examples
dbt run --select  aecom_ftd_participant
# dbt run --select  aecom_ftd_measurement
dbt run --select  aecom_ftd_condition
dbt run --select  aecom_ftd_study

# Run a single target model and its dependencies.
dbt run --select tgt_participant --vars '{"source_table": "aecom_ftd_participant", "target_schema": "aecom_tgt_data"}'
dbt run --select tgt_condition --vars '{"source_table": "aecom_ftd_condition", "target_schema": "aecom_tgt_data"}'
# dbt run --select +tgt_event --vars '{"source_table": "aecom_ftd_event", "target_schema": "aecom_tgt_data"}'
# dbt run --select +tgt_measurement --vars '{"source_table": "aecom_ftd_measurement", "target_schema": "aecom_tgt_data"}'
dbt run --select tgt_study --vars '{"source_table": "aecom_ftd_study", "target_schema": "aecom_tgt_data"}'