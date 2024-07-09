{{ config(materialized='table') }}

WITH customer_revenue AS (
SELECT 
    a.name,
	o.total_revenue
FROM {{ ref('accounts_stg') }}  a
LEFT JOIN {{ ref('orders_fact') }}  o
ON a.id = o.account_id
ORDER BY total_revenue desc    
)

SELECT *
FROM customer_revenue