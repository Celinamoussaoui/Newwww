SELECT
m.*,
shipping_fee,
logcost,
ship_cost,
ROUND((margin+shipping_fee-logcost-ship_cost),2) AS operational_margin
FROM {{ref("int_orders_margin")}} AS m
LEFT JOIN {{ref("stg_raw__ship")}} AS s
    USING(orders_id)
ORDER BY orders_id DESC