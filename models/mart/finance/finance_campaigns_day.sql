 SELECT
     date_date,
     ROUND(operational_margin - ads_cost,2) AS ads_margin,
     ROUND(average_basket,2) AS average_basket,
     operational_margin,
     ads_cost,
     ads_impressions,
     ads_clicks,
     total_quantity,
     revenue,
     total_purchase_cost,
     margin,
     total_shipping_fee,
     total_log_cost
 FROM {{ ref('int_campaigns_day') }}
 FULL JOIN {{ ref('finance_days') }}
     USING (date_date)
 ORDER BY date_date DESC