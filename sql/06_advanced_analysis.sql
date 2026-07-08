-- Business Question 1
-- Rank Customers by Loan Amount

SELECT
    loanid,
    loanamount,
    RANK() OVER(
        ORDER BY loanamount DESC
    ) AS loan_rank
FROM loan_default;

/* Business Insight

Ranking customers by loan amount helps identify high-value loans that may require closer monitoring due to their larger financial exposure.
*/

-- Business Question 2
-- Top 10 Highest Loan Amounts

SELECT
    loanid,
    loanamount
FROM loan_default
ORDER BY loanamount DESC
LIMIT 10;

/* Business Insight

These loans represent the bank's highest financial exposure and should be monitored carefully as part of portfolio risk management.
*/

-- Business Question 3
-- Categorize Customers Using CASE

SELECT
    loanid,
    creditscore,
    CASE
        WHEN creditscore < 580 THEN 'High Risk'
        WHEN creditscore BETWEEN 580 AND 669 THEN 'Medium Risk'
        WHEN creditscore BETWEEN 670 AND 739 THEN 'Low Risk'
        ELSE 'Very Low Risk'
    END AS risk_level
FROM loan_default;

/*Business Insight

Creating business-friendly risk categories improves reporting and helps stakeholders interpret customer risk more easily.
*/

-- Business Question 4
-- Average Loan Amount by Risk Level

SELECT
CASE
WHEN creditscore <580 THEN 'High Risk'
WHEN creditscore BETWEEN 580 AND 669 THEN 'Medium Risk'
WHEN creditscore BETWEEN 670 AND 739 THEN 'Low Risk'
ELSE 'Very Low Risk'
END AS risk_level,
ROUND(AVG(loanamount),2) AS avg_loan
FROM loan_default
GROUP BY risk_level
ORDER BY avg_loan DESC;

/* Business Insight

Comparing average loan amounts across risk levels helps evaluate whether larger loans are
concentrated within particular customer risk categories.
*/

-- Business Question 5
-- Top 5 Customers by Income Within Each Employment Type

SELECT *
FROM(
SELECT
loanid,
employmenttype,
income,
ROW_NUMBER() OVER(
PARTITION BY employmenttype
ORDER BY income DESC
) AS rn
FROM loan_default
)t
WHERE rn<=5;

/* Business Insight

Partitioning by employment type allows the bank to identify top-income customers
 within each employment category rather than across the entire dataset.
 */
 
-- Business Question 6
-- Default Rate Above Overall Average

WITH overall AS(
SELECT AVG(`default`) avg_default
FROM loan_default
)
SELECT
employmenttype,
ROUND(AVG(`default`)*100,2) AS default_rate
FROM loan_default
GROUP BY employmenttype
HAVING AVG(`default`)>
(SELECT avg_default FROM overall);

/* Business Insight

Employment groups with default rates above the portfolio average may require additional review and stronger credit controls.
*/

-- Business Question 7
-- Running Total of Loan Amount

SELECT
loanid,
loanamount,
SUM(loanamount)
OVER(
ORDER BY loanamount DESC
) AS running_total
FROM loan_default;

/* Business Insight

Running totals provide a cumulative view of lending exposure and are useful for portfolio monitoring. 
*/

-- Business Question 8
-- Percentage Contribution of Each Loan Purpose

SELECT
loanpurpose,
SUM(loanamount) AS total_amount,
ROUND(
SUM(loanamount)*100/
(SUM(SUM(loanamount))
OVER()),2
) percentage_share
FROM loan_default
GROUP BY loanpurpose
ORDER BY percentage_share DESC;

/* Business Insight

This analysis highlights which loan purposes contribute the most to the bank's overall lending portfolio.
*/

-- Business Question 9
-- Highest Default Rate by Age Group Using CTE

WITH age_default AS(
SELECT
agegroup,
ROUND(AVG(`default`)*100,2) default_rate
FROM loan_default
GROUP BY agegroup
)
SELECT *
FROM age_default
ORDER BY default_rate DESC;

/* Business Insight

Using a CTE makes the query easier to understand and maintain while clearly separating intermediate calculations from the final result.
*/

-- Business Question 10
-- Top 5 Highest-Risk Customer Segments

SELECT
agegroup,
employmenttype,
creditcategory,
ROUND(AVG(`default`)*100,2) AS default_rate,
COUNT(*) total_customers
FROM loan_default
GROUP BY
agegroup,
employmenttype,
creditcategory
HAVING COUNT(*)>=50
ORDER BY default_rate DESC
LIMIT 5;

/* Business Insight

These customer profiles represent combinations of characteristics associated with the highest observe
default rates and can help the bank prioritize enhanced risk assessment.
*/


/*
Advanced SQL Summary

This file demonstrates advanced SQL techniques,
including:

- CASE expressions
- Common Table Expressions (CTEs)
- Window Functions
- Ranking Functions
- ROW_NUMBER()
- Running Totals
- Percentage Contribution
- Multi-dimensional Customer Segmentation

These techniques improve analytical capability and
support advanced business reporting.
*/