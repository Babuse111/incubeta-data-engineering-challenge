-- ============================================================================
-- Incubeta Data Engineering Challenge
-- Gold Layer: BQML Model Training
-- Author: Happy Sibusiso Ndlovu
-- Description:
-- Trains a BigQuery ML K-Means clustering model using amount and item_category.
-- ============================================================================

CREATE OR REPLACE MODEL `incubeta-data-engineer.retail_gold.customer_segments_model`
OPTIONS(
  model_type = 'kmeans',
  num_clusters = 4,
  standardize_features = TRUE
) AS
SELECT
  amount,
  item_category
FROM `incubeta-data-engineer.retail_silver.cleaned_transactions`
WHERE amount IS NOT NULL
  AND item_category IS NOT NULL;
