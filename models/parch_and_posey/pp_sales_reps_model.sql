{{ config(materialized='view') }}

WITH sales_reps AS (
                    SELECT *
                    FROM sales_reps
                    )

SELECT *
FROM sales_reps