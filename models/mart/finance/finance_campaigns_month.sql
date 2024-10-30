SELECT
    date_trunc(date_date, MONTH) AS datemonth,
    SUM(ads_margin) AS ads_margin,
    ROUND(SUM(average_basket), 2) AS average_basket,  
    SUM(operational_margin) AS operational_margin,
    SUM(ads_cost) AS ads_cost,
    SUM(ads_impressions) AS ads_impressions,
    SUM(ads_clicks) AS ads_clicks,
    SUM(total_quantity) AS total_quantity,
    SUM(revenue) AS revenue,
    SUM(total_purchase_cost) AS total_purchase_cost,
    SUM(margin) AS margin,
    SUM(total_shipping_fee) AS total_shipping_fee,
    SUM(total_log_cost) AS total_log_cost
FROM {{ ref('finance_campaigns_day') }}
GROUP BY datemonth
ORDER BY datemonth DESC

