-- Services by Program
-- Purpose: Combine service data with client demographics to analyse service delivery
-- across different programs (e.g. HCP, CHSP, HACC). Supports program-level reporting.

SELECT
  c.program,
  COUNT(*) AS total_services,
  SUM(s.duration_minutes) AS total_minutes,
  SUM(s.cost) AS total_cost
FROM `sql-portfolio-practice.aged_care_project.services` s
LEFT JOIN `sql-portfolio-practice.aged_care_project.clients` c
  ON s.client_id = c.client_id
GROUP BY c.program
ORDER BY total_minutes DESC;
