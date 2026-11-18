## Suggested Power BI dashboard

**KPI cards:** Total Admissions, Average Length of Stay, Total Billed, Insurance Covered, Patient Balance.

**Visuals:**
- Line chart: admissions by month.
- Bar chart: admissions by department and diagnosis.
- Stacked column: billed amount split between insurer coverage and patient balance.
- Donut chart: emergency versus elective admissions.
- Bar chart: patient balance by insurance provider.

**Slicers:** admission date, department, diagnosis, admission type, insurance provider, gender.

**Suggested measures:** Admissions = COUNTROWS(hospital_admissions); Total Billed = SUM(hospital_admissions[billed_amount]); Coverage Rate = DIVIDE(SUM(hospital_admissions[insurance_covered]), [Total Billed]); Patient Balance = SUM(hospital_admissions[patient_balance]).

This is entirely synthetic educational data, not real patient or hospital information. Do not use it for clinical decisions or operational benchmarking.