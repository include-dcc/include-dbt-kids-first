#!/bin/bash
set -e  # Exit on error
dbt clean
dbt deps || { echo "Error: dbt deps failed. Exiting..."; exit 1; }
# Run Target tables
dbt run --select +tgt_participant --vars '{"source_table": "aecom_ftd_participant", "target_schema": "aecom_tgt_data"}'
dbt run --select +tgt_condition --vars '{"source_table": "aecom_ftd_condition", "target_schema": "aecom_tgt_data"}'
dbt run --select +tgt_study --vars '{"source_table": "aecom_ftd_study", "target_schema": "aecom_tgt_data"}'
