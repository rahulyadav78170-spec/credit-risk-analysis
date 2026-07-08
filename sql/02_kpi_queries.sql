
SELECT * FROM loan_default LIMIT 3;

-- Total Loan Applications

SELECT COUNT(*) as total_loan_applications FROM loan_default;

-- Default Rate

SELECT ROUND(AVG(`default`)*100,2) AS avg_default
FROM loan_default;

-- Total Loan Amount

SELECT
SUM(loanamount) AS total_loan_amount
FROM loan_default;

-- Average Loan Amount

SELECT
ROUND(AVG(loanamount),2) AS average_loan_amount
FROM loan_default;

-- Average Income

SELECT
ROUND(AVG(income),2) AS average_income
FROM loan_default;

-- Average Credit Score

SELECT
ROUND(AVG(creditscore),2) AS average_credit_score
FROM loan_default;

-- Average Interest Rate

SELECT
ROUND(AVG(interestrate),2) AS average_interest_rate
FROM loan_default;

/*
Business Insight

The loan portfolio contains over 255,000 applications with an overall
default rate of approximately 11.6%.

These KPIs provide a high-level overview of portfolio performance
and will be displayed on the Executive Summary page
of the Power BI dashboard.
*/