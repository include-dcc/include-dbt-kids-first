{{ config(materialized='table') }}

select * from aecom_src_data.combined
