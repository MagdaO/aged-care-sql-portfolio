-- Daily Service Summary
-- Purpose: Provide an operational overview of service delivery by date and service type,
-- including volume, total minutes, and cost. This type of query can support dashboards.

SELECT
  service_date,
  service_type,
  COUNT(*) AS total_services,
  SUM(duration_minutes) AS total_minutes,
  SUM(cost) AS total_cost
FROM `sql-portfolio-practice.aged_care_project.services`
GROUP BY service_date, service_type
ORDER BY service_date, service_type;
