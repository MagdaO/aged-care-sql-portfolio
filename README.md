# Aged Care SQL Portfolio

## Overview
This project simulates a home care environment and the use of SQL for analysing service rosters and client demographic data. It showcases practical SQL skills applied to real-world home care scenarios.

## Data Model
The project includes two main tables:

- **services**: records of home care services delivered, including staff, clients, time, duration, and cost
- **clients**: demographic information such as gender, country of birth, preferred language, and program type

## Key SQL Skills
- Table creation and structured data modelling
- Joins between operational and demographic datasets
- Aggregations for service usage and reporting
- Data quality checks for demographic completeness
- Window functions to detect scheduling conflicts

## Analyses

### Service Usage by Client
Analyses total services, minutes, and cost per client to understand demand and workload.

### Services by Program
Combines service and client data to analyse delivery across programs (HCP, CHSP, HACC).

### Daily Service Summary
Provides reporting-ready metrics by date and service type for operational dashboards.

### Data Quality Monitoring
Identifies missing demographic fields such as gender, language, and country of birth.

### Overlap Detection
Uses window functions to identify overlapping staff schedules within the same day.

## Tools Used
- Google BigQuery
- SQL

## Notes
This is a simulated dataset created for portfolio and learning purposes, based on real-world home care scenarios.
