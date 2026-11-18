# Hospital admissions data dictionary

| Field | Meaning | Type |
|---|---|---|
| patient_id | Synthetic record key, not a real patient ID | Text |
| admission_date | Admission date | Date |
| age | Age in years | Integer |
| gender | Recorded category | Category |
| department | Hospital department | Category |
| diagnosis | Illustrative diagnosis | Category |
| admission_type | Emergency or Elective | Category |
| length_of_stay_days | Stay duration | Decimal |
| insurance_provider | Fictional insurer label | Category |
| billed_amount | Illustrative billed amount | Decimal |
| insurance_covered | Illustrative insurer payment | Decimal |
| patient_balance | Illustrative patient share | Decimal |
| discharge_status | Discharge status | Category |

Reconciliation: billed_amount = insurance_covered + patient_balance. All records are synthetic.