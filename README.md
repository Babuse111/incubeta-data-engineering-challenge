# Incubeta Data Engineering Challenge

## Overview

This project implements a Medallion Architecture (Bronze, Silver and Gold) using Google BigQuery and BigQuery ML (BQML). The pipeline ingests raw retail transaction data, performs data cleansing and feature engineering, and applies a K-Means clustering model to generate customer segments.

---

## Architecture

Bronze Layer
- Raw CSV ingestion into BigQuery.

Silver Layer
- Data cleansing
- Data type conversions
- Missing value handling
- Feature engineering
- Invalid transaction filtering

Gold Layer
- Customer segmentation using BigQuery ML (K-Means)
- Prediction generation using ML.PREDICT
- Final analytics table

---

## Project Structure

```
sql/
    silver_transform.sql
    gold_model_training.sql
    gold_prediction.sql

proof/
    final_table.png
    model_evaluation.png

README.md
```

---

## Technologies

- Google Cloud Platform
- BigQuery
- BigQuery ML (BQML)
- Standard SQL
- GitHub

---

## AI Assistance

AI tools (ChatGPT) were used to assist with:
- SQL query refinement
- Documentation
- Repository organization

All SQL was reviewed, executed, and validated in Google BigQuery before submission.

---

## Production Orchestration

In a production environment, this pipeline would be orchestrated using Dataform or Scheduled Queries within Google Cloud. The workflow would execute in the following order:

1. Bronze data ingestion
2. Silver transformation
3. BQML model training
4. Gold prediction table generation

---
## AI Usage

ChatGPT was used to assist with:
- SQL query refinement and debugging
- Documentation (README)
- Repository organization

All SQL statements were reviewed, executed, and validated in Google BigQuery. The final implementation, testing, and verification of outputs were completed manually before submission.

## Author

Happy Sibusiso Ndlovu
