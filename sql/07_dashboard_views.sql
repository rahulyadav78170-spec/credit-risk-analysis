-- View 1 — Executive KPIs

CREATE VIEW vw_dashboard_kpis AS

SELECT
COUNT(*) AS total_applications,
ROUND(AVG(`default`)*100,2) AS default_rate,
SUM(loanamount) AS total_loan_amount,
ROUND(AVG(loanamount),2) AS average_loan_amount,
ROUND(AVG(income),2) AS average_income,
ROUND(AVG(creditscore),2) AS average_credit_score,
ROUND(AVG(interestrate),2) AS average_interest_rate
FROM loan_default;

SELECT * FROM vw_dashboard_kpis;

-- View 2 — Customer Analysis

CREATE VIEW vw_customer_analysis AS
SELECT
agegroup,
COUNT(*) AS total_customers,
SUM(`default`) AS default_customers,
ROUND(AVG(`default`)*100,2) AS default_rate
FROM loan_default
GROUP BY agegroup;

SELECT * FROM vw_customer_analysis;

-- View 3 — Income Analysis

CREATE VIEW vw_income_analysis AS

SELECT
incomegroup,
COUNT(*) total_customers,
ROUND(AVG(`default`)*100,2) default_rate
FROM loan_default
GROUP BY incomegroup;

-- View 4 — Employment Analysis

CREATE VIEW vw_employment_analysis AS

SELECT
employmenttype,
COUNT(*) total_customers,
ROUND(AVG(`default`)*100,2) default_rate
FROM loan_default
GROUP BY employmenttype;

-- View 5 — Education Analysis

CREATE VIEW vw_education_analysis AS

SELECT
education,
COUNT(*) total_customers,
ROUND(AVG(`default`)*100,2) default_rate
FROM loan_default
GROUP BY education;

-- View 6 — Loan Purpose Analysis

CREATE VIEW vw_loanpurpose_analysis AS

SELECT
loanpurpose,
COUNT(*) total_loans,
SUM(loanamount) total_amount,
ROUND(AVG(`default`)*100,2) default_rate
FROM loan_default
GROUP BY loanpurpose;

-- View 7 — Credit Category Analysis

CREATE VIEW vw_credit_analysis AS

SELECT
creditcategory,
COUNT(*) total_customers,
ROUND(AVG(`default`)*100,2) default_rate
FROM loan_default
GROUP BY creditcategory;

-- View 8 — Risk Summary

CREATE VIEW vw_risk_summary AS

SELECT
employmenttype,
creditcategory,
ROUND(AVG(`default`)*100,2) default_rate,
COUNT(*) total_customers
FROM loan_default
GROUP BY
employmenttype,
creditcategory;

SHOW FULL TABLES
WHERE Table_type='VIEW';