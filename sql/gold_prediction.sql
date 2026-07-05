CREATE OR REPLACE TABLE `incubeta-data-engineer.retail_gold.analytics_customer_segments` AS
SELECT
  transaction_id,
  customer_id,
  signup_date,
  purchase_date,
  amount,
  item_category,
  is_returned,
  days_to_first_purchase,
  CENTROID_ID AS predicted_cluster
FROM ML.PREDICT(
  MODEL `incubeta-data-engineer.retail_gold.customer_segments_model`,
  (
    SELECT *
    FROM `incubeta-data-engineer.retail_silver.cleaned_transactions`
  )
);
