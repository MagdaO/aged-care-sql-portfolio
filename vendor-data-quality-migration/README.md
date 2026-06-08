# Vendor Data Quality & Migration

## Overview

This project simulates a vendor master data migration scenario involving duplicate vendors, inconsistent naming conventions, incomplete identifiers and address standardisation challenges.

The objective is to prepare vendor data for migration into a target ERP system through profiling, cleansing, standardisation and duplicate identification.

## Data Quality Activities

- Vendor name standardisation
- ABN validation and cleansing
- Phone number standardisation
- Address standardisation
- Duplicate detection
- Merge candidate identification

## SQL Techniques

- CTEs
- TRIM
- REPLACE
- UPPER
- COUNT(DISTINCT)
- GROUP BY / HAVING
- ROW_NUMBER
- Data profiling and validation

## Files

| File | Purpose |
|--------|---------|
| 01_create_vendor_data.sql | Creates the sample vendor dataset |
| 02_profile_data.sql | Data profiling and quality assessment |
| 03_clean_vendor_data.sql | Standardisation and cleansing logic |
| 04_duplicate_detection.sql | Duplicate identification and matching |
| 05_merge_candidates.sql | Merge candidate and deduplication logic |

## Notes

This is a simulated dataset created for portfolio and learning purposes based on realistic data quality and ERP migration scenarios.
