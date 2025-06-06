#!/usr/bin/env python
import argparse
from dbt_pipeline_utils.scripts.generate_docs import main

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Run ETL script with arguments.")
    parser.add_argument("-s", "--study_id", required=True, help="The study identifier.")
    parser.add_argument("-p", "--project_id", required=True, help="The project associated with the study.")
    parser.add_argument("-t", "--tgt_id", required=True, help="The tgt model")
    parser.add_argument("-f", "--filepath", required=False, help="Path to the directory containing src data files. If not set, defaults to the {dbt project}/data path.")

    args = parser.parse_args()

    main(study_id=args.study_id, project_id=args.project_id, tgt_id=args.tgt_id, src_data_path=args.filepath)
    
