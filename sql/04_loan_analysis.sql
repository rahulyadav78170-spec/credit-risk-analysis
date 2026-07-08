-- Business Question 1
-- Which loan purpose has the highest default rate?

SELECT
    loanpurpose,
    COUNT(*) AS total_loans,
    SUM(`default`) AS default_loans,
    ROUND(AVG(`default`)*100,2) as default_rate
FROM loan_default
GROUP BY loanpurpose
ORDER BY default_rate DESC;

/*Business Insight

Loan purposes with higher default rates may require stricter eligibility criteria,
additional documentation, or enhanced risk assessment before loan approval.
*/

-- Business Question 2
-- Which loan purpose has the highest average loan amount?

SELECT
    loanpurpose,
    ROUND(AVG(loanamount),2) AS average_loan_amount
FROM loan_default
GROUP BY loanpurpose
ORDER BY average_loan_amount DESC;

/* Business Insight

Loan purposes with higher average loan amounts represent greater financial exposure.
Monitoring repayment performance for these categories is important to reduce potential losses.
*/

-- Business Question 3
-- Which loan purpose receives the highest total loan amount?

SELECT
    loanpurpose,
    SUM(loanamount) AS total_loan_amount
FROM loan_default
GROUP BY loanpurpose
ORDER BY total_loan_amount DESC;

/* Business Insight

Loan purposes receiving the highest total lending represent major areas of business activity.
These categories should be monitored regularly to maintain portfolio quality.
*/


-- Business Question 4
-- Which loan term has the highest default rate?

SELECT
    loanterm,
    COUNT(*) AS total_loans,
    ROUND(AVG(`default`) * 100,2) AS default_rate
FROM loan_default
GROUP BY loanterm
ORDER BY default_rate DESC;

/* Business Insight

Loan terms with higher default rates may require additional review when designing
lending products or determining repayment schedules.
*/

-- Business Question 5
-- What is the average interest rate by loan purpose?

SELECT
    loanpurpose,
    ROUND(AVG(interestrate),2) AS average_interest_rate
FROM loan_default
GROUP BY loanpurpose
ORDER BY average_interest_rate DESC;

/* Business Insight

Variations in average interest rates across loan purposes may reflect different levels of
perceived lending risk and pricing strategies.
*/

-- Business Question 6
-- What is the average Debt-to-Income (DTI) ratio by loan purpose?

SELECT
    loanpurpose,
    ROUND(AVG(dtiratio),2) AS average_dti_ratio
FROM loan_default
GROUP BY loanpurpose
ORDER BY average_dti_ratio DESC;

-- Business Question 7
-- What is the distribution of loans across loan terms?

SELECT
    loanterm,
    COUNT(*) AS total_loans,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM loan_default),2) AS percentage_share
FROM loan_default
GROUP BY loanterm
ORDER BY loanterm;

/*Business Insight

This analysis shows which loan terms are most commonly selected by customers and helps evaluate the bank's loan portfolio composition.
*/

-- Business Question 8
-- Which loan purpose generates the largest number of applications?

SELECT
    loanpurpose,
    COUNT(*) AS total_applications
FROM loan_default
GROUP BY loanpurpose
ORDER BY total_applications DESC;

/* Business Insight

Loan purposes with the highest number of applications represent the bank's most frequently requested lending
 products and should be monitored for both growth opportunities and credit risk.
 */
 
 /*
Loan Analysis Summary

This analysis examined loan characteristics including
loan purpose, loan amount, loan term, interest rate,
and debt-to-income ratio.

The findings provide insights into lending patterns,
portfolio exposure, and areas where credit risk
management can be strengthened.

These results will support the Loan Analysis page
of the Power BI dashboard.
*/