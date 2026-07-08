CREATE DATABASE credit_risk_analysis;

USE credit_risk_analysis;

SHOW TABLES;

SELECT Count(*) FROM loan_default;

SELECT *
FROM loan_default
LIMIT 10;

DESCRIBE loan_default;