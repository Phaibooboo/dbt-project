{{ config(materialized='view') }}

WITH region AS (
                SELECT *
                FROM region
                )

SELECT *
FROM region