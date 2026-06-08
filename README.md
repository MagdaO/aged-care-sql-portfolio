# About Me

I am a data and systems professional with extensive experience in aged care, local government and community services, specialising in data quality, reporting, operational improvement and business systems.

This portfolio contains SQL projects based on realistic operational, data quality and migration scenarios, demonstrating approaches to service analytics, master data management, data governance and ERP migration readiness.

# SQL Portfolio

This repository contains a collection of SQL projects based on realistic operational and data quality scenarios.

# Project 1: Home Care Analytics
## Overview

This project simulates a home care environment and the use of SQL for analysing service rosters and client demographic data. It showcases practical SQL skills applied to real-world home care scenarios.

## Data Model
### services

Records of home care services delivered, including staff, clients, time, duration and cost.

### clients

Demographic information including gender, country of birth, preferred language and program type.

## Key SQL Skills
Table creation and structured data modelling
Joins between operational and demographic datasets
Aggregations for service usage and reporting
Data quality checks for demographic completeness
Window functions to detect scheduling conflicts

## Analyses
### Service Usage by Client

Analyses total services, minutes and cost per client to understand demand and workload.

### Services by Program

Combines service and client data to analyse delivery across programs (HCP, CHSP, HACC).

### Daily Service Summary

Provides reporting-ready metrics by date and service type for operational dashboards.

### Data Quality Monitoring

Identifies missing demographic fields such as gender, language and country of birth.

### Overlap Detection

Uses window functions to identify overlapping staff schedules within the same day.

# Project 2: Vendor Data Quality & Migration
## Overview

This project simulates a vendor master data migration scenario involving duplicate vendors, inconsistent naming conventions, incomplete identifiers and address standardisation challenges.

The objective is to prepare vendor data for migration into a target ERP system through profiling, cleansing, standardisation and duplicate identification.

## Key SQL Skills
Data profiling
Data cleansing and standardisation
Common Table Expressions (CTEs)
String manipulation using TRIM, REPLACE and UPPER
Data quality validation
Duplicate detection
COUNT(DISTINCT)
GROUP BY and HAVING
ROW_NUMBER for deduplication
Match confidence and merge candidate logic

## Data Quality Activities
### Vendor Name Standardisation

Standardised abbreviations, punctuation, legal entity suffixes and naming variations.

### ABN Validation

Identified formatting inconsistencies and standardised ABNs for duplicate detection.

Phone Standardisation

Removed formatting differences including spaces, brackets and hyphens.

### Address Standardisation

Normalised common address abbreviations and formatting inconsistencies.

### Duplicate Detection

Identified duplicate vendor candidates using combinations of vendor name, ABN, phone number and address.

### Migration Readiness

Developed merge candidate logic and staging-based validation concepts prior to migration into a target system.

# Tools Used
DuckDB
Google BigQuery
SQL

# Notes
All datasets are simulated and created for portfolio and learning purposes based on realistic aged care, data quality and migration scenarios.
