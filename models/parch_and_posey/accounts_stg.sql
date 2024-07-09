{{ config(materialized='view') }}

SELECT id, name
FROM accounts
