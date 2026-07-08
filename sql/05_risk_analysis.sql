-- Business Question 1
-- Does having a mortgage influence loan default?

SELECT
    hasmortgage,
    COUNT(*) AS total_customers,
    SUM(`default`) AS default_customers,
    ROUND(AVG(`default`) * 100,2) AS default_rate
FROM loan_default
GROUP BY hasmortgage
ORDER BY default_rate DESC;

/* Business Insight

Compare the default rates for customers with and without a mortgage. If a meaningful difference exists, mortgage status may 
be considered as an additional risk indicator during loan evaluation.
*/

-- Business Question 2
-- Does having a co-signer reduce loan default?

SELECT
    hascosigner,
    COUNT(*) AS total_customers,
    SUM(`default`) AS default_customers,
    ROUND(AVG(`default`) * 100,2) AS default_rate
FROM loan_default
GROUP BY hascosigner
ORDER BY default_rate DESC;

/* Business Insight

Compare the default rates of customers with and without a co-signer to evaluate whether a co-signer is associated with lower repayment risk.
*/

-- Business Question 3
-- Which credit category has the highest default rate?

SELECT
    creditcategory,
    COUNT(*) AS total_customers,
    SUM(`default`) AS default_customers,
    ROUND(AVG(`default`) * 100,2) AS default_rate
FROM loan_default
GROUP BY creditcategory
ORDER BY default_rate DESC;

/* Business Insight

Credit categories with higher default rates should receive additional attention during the loan approval process.
*/

-- Business Question 4
-- Which Age Group and Employment Type combination has the highest default rate?

SELECT
    agegroup,
    employmenttype,
    COUNT(*) AS total_customers,
    ROUND(AVG(`default`) * 100,2) AS default_rate
FROM loan_default
GROUP BY agegroup, employmenttype
HAVING COUNT(*) >= 100
ORDER BY default_rate DESC;

/* Business Insight

This analysis identifies customer segments with elevated default rates while excluding very small groups that may not provide reliable insights.
*/

-- Business Question 5
-- Which customer segments have the highest average loan amount?

SELECT
    agegroup,
    creditcategory,
    ROUND(AVG(loanamount),2) AS average_loan_amount
FROM loan_default
GROUP BY agegroup, creditcategory
ORDER BY average_loan_amount DESC;

/*Business Insight

Customer segments with larger average loan amounts represent greater financial exposure and may require closer monitoring.
*/

-- Business Question 6
-- Rank loan purposes by default rate

SELECT
    loanpurpose,
    ROUND(AVG(`default`)*100,2) as default_rate,
    RANK() OVER(
    ORDER BY AVG(`default`) DESC
    ) AS risk_rank
FROM loan_default
GROUP BY loanpurpose;
    
/* Business Insight

Ranking loan purposes allows the bank to identify the highest-risk lending products and prioritize policy reviews accordingly.
*/

-- Business Question 7
-- Rank employment types by default rate

SELECT
    employmenttype,
    ROUND(AVG(`default`)*100,2) as default_rate,
    DENSE_RANK () OVER(
    ORDER BY AVG(`default`) DESC
    ) as risk_rank
FROM loan_default
GROUP BY employmenttype;

/* Business Insight

Employment categories with higher rankings may require additional financial verification during the loan approval process.
*/

-- Business Question 8
-- Identify the Top 10 Highest-Risk Customer Segments

SELECT
    agegroup,
    incomegroup,
    creditcategory,
    employmenttype,
    COUNT(*) AS total_customers,
    ROUND(AVG(`default`) * 100,2) AS default_rate
FROM loan_default
GROUP BY
    agegroup,
    incomegroup,
    creditcategory,
    employmenttype
HAVING COUNT(*) >= 30
ORDER BY default_rate DESC
LIMIT 10;

/* Business Insight

These customer profiles represent the highest observed default rates in the dataset. They can help the bank identify segments
 that may benefit from enhanced credit assessments or closer monitoring.
 */
 
 
 /*
Risk Analysis Summary

This analysis focused on identifying customer and loan
segments associated with higher repayment risk.

The results showed how mortgage status, co-signer
availability, credit category, employment type,
and combinations of customer characteristics
relate to loan default.

Window functions were used to rank higher-risk
categories and customer segments.

These findings support more informed credit
risk assessment and lending decisions.
*/