SELECT 
    o.id,
    o.account_id,
    o.occurred_at,
    o.total,
    o.total_amt_usd,
	SUM(o.total_amt_usd) as total_revenue,
	COUNT(o.total) as total_no_of_orders,
	SUM(o.total) as total_no_of_paper_ordered
FROM {{ ref('orders_stg') }} o
GROUP BY 
    o.id,
    o.account_id,
    o.occurred_at,
    o.total,
    o.total_amt_usd
ORDER BY total_revenue desc