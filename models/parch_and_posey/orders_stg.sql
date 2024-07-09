{{ config(materialized='view') }}

SELECT 
    id,
    account_id,
    occurred_at,
    total,
    total_amt_usd,
    CASE 
        WHEN total > 2000 THEN 'large_order_quantity'
        WHEN total > 1000 THEN 'mid_order_quantity'
        ELSE 'low_order_quantity'
    END AS order_quantity_categories
FROM orders
