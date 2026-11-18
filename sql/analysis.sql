/* Hospital Admissions & Medical Insurance Analysis */
-- 1. Admissions by department
SELECT department, COUNT(*) AS admissions,
       AVG(length_of_stay_days) AS avg_length_of_stay
FROM hospital_admissions GROUP BY department ORDER BY admissions DESC;

-- 2. Monthly admissions trend
SELECT DATE_TRUNC('month', admission_date) AS admission_month,
       COUNT(*) AS admissions
FROM hospital_admissions GROUP BY 1 ORDER BY 1;

-- 3. Billing and insurance coverage by provider
SELECT insurance_provider, COUNT(*) AS admissions,
       SUM(billed_amount) AS total_billed,
       SUM(insurance_covered) AS total_covered,
       SUM(patient_balance) AS patient_balance
FROM hospital_admissions GROUP BY insurance_provider ORDER BY total_billed DESC;

-- 4. Diagnosis mix and average stay
SELECT diagnosis, COUNT(*) AS cases,
       AVG(length_of_stay_days) AS avg_stay_days,
       AVG(billed_amount) AS avg_billed_amount
FROM hospital_admissions GROUP BY diagnosis ORDER BY cases DESC;

-- 5. Emergency versus elective admissions
SELECT admission_type, COUNT(*) AS admissions,
       AVG(length_of_stay_days) AS avg_stay_days
FROM hospital_admissions GROUP BY admission_type;

-- 6. Patient balance by department
SELECT department, SUM(patient_balance) AS outstanding_patient_balance
FROM hospital_admissions GROUP BY department ORDER BY outstanding_patient_balance DESC;