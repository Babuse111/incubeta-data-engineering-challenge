
-- ============================================================================
-- Incubeta Data Engineering Challenge
-- Silver Layer: Data Cleansing & Transformation
-- Author: Happy Sibusiso Ndlovu
-- Description:
-- Cleans the Bronze layer by:
--   - Converting data types
--   - Handling missing values
--   - Filtering invalid transactions
--   - Creating days_to_first_purchase
-- ============================================================================


CREATE OR REPLACE TABLE `incubeta-data-engineer.retail_silver.cleaned_transactions` AS
SELECT
  transaction_id,
  customer_id,
  COALESCE(SAFE_CAST(signup_date AS DATE), purchase_date) AS signup_date,
  purchase_date,
  SAFE_CAST(amount AS FLOAT64) AS amount,
  TRIM(item_category) AS item_category,
  COALESCE(SAFE_CAST(is_returned AS BOOL), FALSE) AS is_returned,
  DATE_DIFF(
    purchase_date,
    COALESCE(SAFE_CAST(signup_date AS DATE), purchase_date),
    DAY
  ) AS days_to_first_purchase
FROM `incubeta-data-engineer.retail_bronze.raw_transactions`
WHERE SAFE_CAST(amount AS FLOAT64) > 0
  AND purchase_date IS NOT NULL;
