-- Data Quality Check: Client Demographics
-- Purpose: Measure completeness of key demographic fields (gender, language, country of birth)

SELECT
  COUNT(*) AS total_clients,

  SUM(CASE WHEN gender IS NULL THEN 1 ELSE 0 END) AS missing_gender,
  SUM(CASE WHEN preferred_language IS NULL THEN 1 ELSE 0 END) AS missing_language,
  SUM(CASE WHEN country_of_birth IS NULL THEN 1 ELSE 0 END) AS missing_country_of_birth

FROM `sql-portfolio-practice.aged_care_project.clients`
