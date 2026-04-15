-- Detect overlapping services for staff on the same day, for example when a staff is booked for two services at the same time
-- This identifies scheduling conflicts in home care delivery
-- For each staff on each day this compares each service with the one just before it using LAG (end_time) and LAG (service_id), so the reference is just the previous role

--  Query starts with a temporary table called "ordered_services"
WITH ordered_services AS (
  SELECT
    service_id,
    staff_id,
    client_id,
    service_date,
    start_time,
    end_time,
    LAG(end_time) OVER (
      PARTITION BY staff_id, service_date
      ORDER BY start_time
    ) AS previous_end_time,
    LAG(service_id) OVER (
      PARTITION BY staff_id, service_date
      ORDER BY start_time
    ) AS previous_service_id
  FROM `sql-portfolio-practice.aged_care_project.services`
)

SELECT
  staff_id,
  service_date,
  previous_service_id,
  service_id,
  previous_end_time,
  start_time,
  end_time
FROM ordered_services
-- Below the condition of the overlap  
WHERE previous_end_time > start_time
ORDER BY staff_id, service_date, start_time;
