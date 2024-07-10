SELECT id
FROM {{ ref('orders_fact') }}
WHERE total_no_of_orders < 1