-- Business Question 1
-- How are customers distributed across different age groups?

SELECT 
agegroup, COUNT(*) as total_customers 
FROM loan_default
GROUP BY agegroup
ORDER BY total_customers DESC;

/* Business Insight

-- This analysis shows the number of customers in each age group. Understanding the customer 
distribution helps the bank identify its largest customer segments and provides context for subsequent default rate analysis.
*/

-- Business Question 2
-- Which age group has the highest loan default rate?

SELECT 
   agegroup,
   COUNT(*) AS total_customers,
   SUM(`default`) as default_customers,
   ROUND(AVG(`default`)*100,2) as default_rate
FROM loan_default
GROUP BY agegroup
ORDER BY default_rate DESC;

/*Business Insight

The age group with the highest default rate represents a relatively higher-risk customer segment. 
The bank should investigate whether other factors such as income, employment, or credit score contribute to this elevated risk.
*/

-- Business Question 3
-- Which income group has the highest loan default rate?

SELECT
incomegroup,
ROUND(AVG(`default`)*100,2) AS default_rate
FROM loan_default
GROUP BY incomegroup
ORDER BY default_rate DESC;

/*Business Insight

The income group with the highest default rate indicates that income alone is not sufficient to assess repayment behavior.
 The bank should evaluate income together with credit score, employment status, and debt-to-income ratio.
 */
 
-- Business Question 4
-- Which education level has the highest loan default rate?

SELECT
education,
ROUND(AVG(`default`)*100,2) AS default_rate
FROM loan_default
GROUP BY education
ORDER BY default_rate DESC;

/* Business Insight

Differences in default rates across education levels provide additional context for customer profiling.
 However, education should be considered alongside financial indicators rather than used independently.
 */

-- Business Question 5
-- Which employment type has the highest loan default rate?

SELECT
employmenttype,
COUNT(*) AS total_customers,
SUM(`default`) AS default_customers,
ROUND(AVG(`default`)*100,2) AS default_rate
FROM loan_default
GROUP BY employmenttype
ORDER BY default_rate DESC;

/* Business Insight

Employment categories with higher default rates may require additional financial verification during the loan approval process.
Employment status should be combined with other credit risk indicators for a balanced assessment.
*/

-- Business Question 6
-- Which marital status has the highest loan default rate?

SELECT
    maritalstatus,
    COUNT(*) AS total_customers,
    SUM(`default`) AS default_customers,
    ROUND(AVG(`default`) * 100, 2) AS default_rate
FROM loan_default
GROUP BY maritalstatus
ORDER BY default_rate DESC;

/* Business Insight

Marital status provides additional demographic information that may help explain repayment behavior.
 It should be interpreted together with financial variables when assessing credit risk.
 */
 
 
 /* Customer Analysis Summary

This analysis examined customer characteristics including
age, income, education, employment type, and marital status.

The results identified customer segments with relatively
higher default rates, providing valuable insights for
credit risk assessment and lending policy improvements.

These findings will support the Customer Analysis page
of the Power BI dashboard.
*/

