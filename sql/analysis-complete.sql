-- PostgreSQL | Hospital Admissions & Medical Insurance
SELECT COUNT(*) AS admissions,SUM(billed_amount) AS total_billed,
 SUM(insurance_covered) AS total_covered,SUM(patient_balance) AS patient_balance,
 ROUND(100.0*SUM(insurance_covered)/NULLIF(SUM(billed_amount),0),2) AS coverage_pct,
 ROUND(AVG(length_of_stay_days),2) AS avg_stay_days FROM hospital_admissions;
SELECT department,COUNT(*) AS admissions,ROUND(AVG(length_of_stay_days),2) AS avg_stay,
 SUM(billed_amount) AS billed FROM hospital_admissions GROUP BY department ORDER BY admissions DESC;
SELECT insurance_provider,SUM(billed_amount) AS billed,SUM(insurance_covered) AS covered,
 SUM(patient_balance) AS balance FROM hospital_admissions GROUP BY insurance_provider;
SELECT admission_type,COUNT(*) AS admissions FROM hospital_admissions GROUP BY admission_type;
-- Reconciliation exceptions: expected zero rows
SELECT patient_id FROM hospital_admissions WHERE billed_amount<>insurance_covered+patient_balance;
SELECT COUNT(*) AS rows,COUNT(DISTINCT patient_id) AS unique_records,
 COUNT(*) FILTER (WHERE age<0 OR length_of_stay_days<0 OR billed_amount<0 OR insurance_covered<0 OR patient_balance<0) AS invalid_rows
FROM hospital_admissions;