
WITH sessions AS (
  SELECT
    event_date,  
    user_pseudo_id,
    (SELECT ep.value.int_value
     FROM UNNEST(event_params) AS ep
     WHERE ep.key = 'ga_session_id'
     LIMIT 1) AS ga_session_id,
    event_name,
    TIMESTAMP_SECONDS(CAST(event_timestamp / 1000000 AS INT64)) AS event_time,
    traffic_source.source AS source,
    traffic_source.medium AS medium,
    traffic_source.name AS campaign,
    device.category AS device_category,
    device.language AS device_language,
    device.operating_system AS device_os,
    (SELECT ep.value.string_value
     FROM UNNEST(event_params) AS ep
     WHERE ep.key = 'page_title'
     LIMIT 1) AS page_title,
    (SELECT ep.value.double_value
     FROM UNNEST(event_params) AS ep
     WHERE ep.key = 'value'
     LIMIT 1) AS event_value_in_usd
  FROM `bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_*`
  WHERE event_name IN (
    'session_start',
    'view_item',
    'add_to_cart',
    'begin_checkout',
    'add_shipping_info',
    'add_payment_info',
    'purchase'
  )
)

SELECT
  FORMAT_DATE('%m/%d/%Y', PARSE_DATE('%Y%m%d', CAST(event_date AS STRING))) AS event_date_formatted,
  event_name,
  COUNT(DISTINCT CONCAT(CAST(user_pseudo_id AS STRING), "-", CAST(ga_session_id AS STRING))) AS unique_sessions,
  SUM(CASE WHEN event_name = 'purchase' THEN event_value_in_usd ELSE 0 END) AS revenue,
  MIN(CASE WHEN event_name = 'session_start' THEN page_title END) AS landing_page,
  source,
  medium,
  campaign,
  device_category,
  device_language,
  device_os
FROM sessions
GROUP BY
  event_date_formatted,
  event_name,
  source,
  medium,
  campaign,
  device_category,
  device_language,
  device_os
ORDER BY
  PARSE_DATE('%m/%d/%Y', event_date_formatted),
  CASE event_name
    WHEN 'session_start' THEN 1
    WHEN 'view_item' THEN 2
    WHEN 'add_to_cart' THEN 3
    WHEN 'begin_checkout' THEN 4
    WHEN 'add_shipping_info' THEN 5
    WHEN 'add_payment_info' THEN 6
    WHEN 'purchase' THEN 7
  END,
  landing_page,
  device_category;
