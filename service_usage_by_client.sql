-- Service Usage by Client
-- Purpose: Analyse total service delivery per client, including number of services,
-- total minutes of care, and total cost. Useful for understanding client demand and workload.

SELECT
  client_id,
  COUNT(*) AS total_services,
  SUM(duration_minutes) AS total_minutes,
  SUM(cost) AS total_cost
FROM `sql-portfolio-practice.aged_care_project.services`
GROUP BY client_id
ORDER BY total_minutes DESC;
