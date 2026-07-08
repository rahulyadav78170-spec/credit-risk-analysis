# 📊 Credit Risk Analysis Dashboard

An end-to-end Data Analytics project that analyzes historical loan application data to identify credit risk patterns and support better lending decisions.

The project covers the complete analytics workflow—from business understanding and data preparation to statistical analysis, SQL querying, and interactive Power BI reporting.

---

# 🎯 Business Problem

Financial institutions must evaluate thousands of loan applications while minimizing the risk of customer default.

The challenge is to identify customer characteristics and loan attributes that are associated with higher default rates so that lending decisions can be more informed and data-driven.

---

# 📌 Business Questions

This project answers the following business questions:

- What is the overall loan default rate?
- Which customer age groups have higher default rates?
- Does income level influence loan default?
- Does employment type affect loan default?
- Which loan purposes receive the most applications?
- Which credit categories represent higher lending risk?
- Is there a statistically significant relationship between customer characteristics and loan default?

---

# 📂 Dataset

The project uses a historical loan application dataset containing customer demographics, financial information, loan details, and loan default status.

### Raw Dataset

```
Loan_default.csv
```

### Final Dataset

```
loan_default_featured.csv
```

The final dataset was created after data preparation and feature engineering and was imported into MySQL for SQL analysis and Power BI reporting.

---

# 🛠 Tools & Technologies

| Tool | Purpose |
|-------|----------|
| Python | Data Cleaning & Analysis |
| Pandas | Data Manipulation |
| NumPy | Numerical Operations |
| Matplotlib | Data Visualization |
| Seaborn | Exploratory Data Analysis |
| SciPy | Statistical Hypothesis Testing |
| MySQL | Database Storage |
| SQL | Business Analysis |
| Power BI | Dashboard Development |
| Git & GitHub | Version Control |

---

# 🔄 Project Workflow

## 1️⃣ Business Understanding

- Defined the business problem.
- Identified project objectives.
- Developed business questions for analysis.

---

## 2️⃣ Data Understanding

Performed an initial exploration of the dataset to understand:

- Dataset dimensions
- Column descriptions
- Data types
- Missing values
- Duplicate records
- Distribution of numerical and categorical variables

---

## 3️⃣ Data Cleaning

Prepared the dataset for analysis by:

- Standardizing column names
- Verifying data types
- Checking missing values
- Checking duplicate records

---

## 4️⃣ Feature Engineering

Created new analytical features including:

- Age Group
- Income Group
- Credit Category
- Employment Level

These features improved customer segmentation during analysis and dashboard development.

---

## 5️⃣ Exploratory Data Analysis

Performed both univariate and bivariate analysis using:

- Count Plots
- Histograms
- Boxplots
- Correlation Heatmap
- Default Distribution
- Loan Purpose Analysis
- Employment Type Analysis
- Credit Category Analysis

Each visualization includes business insights explaining its significance.

---

## 6️⃣ Statistical Analysis

Performed hypothesis testing to validate relationships in the data.

### Chi-Square Test

Used to determine whether categorical variables such as Employment Type and Loan Default are statistically associated.

### Independent T-Test

Used to compare numerical variables between customers who defaulted and those who did not.

Each test includes:

- Null Hypothesis
- Alternative Hypothesis
- Test Statistic
- P-value
- Interpretation
- Business Conclusion

---

## 7️⃣ MySQL Integration

The feature-engineered dataset was imported into MySQL.

The database was then used for:

- KPI calculations
- Customer analysis
- Loan analysis
- Risk analysis

Power BI was connected directly to the MySQL database.

---

## 8️⃣ SQL Analysis

Business SQL queries were written to analyze:

- Total Applications
- Default Rate
- Loan Amount
- Customer Segmentation
- Loan Purpose
- Credit Risk
- Advanced Business Queries

---

# 📈 Interactive Power BI Dashboard

Developed a four-page interactive Power BI dashboard connected directly to the MySQL database.

### Dashboard Features

- Interactive filtering using slicers
- KPI cards to monitor key business metrics
- Customer segmentation analysis
- Loan portfolio analysis
- Credit risk analysis
- Cross-filtering between visuals
- Consistent dashboard design across all report pages

---

## 📄 Executive Summary

**KPIs**

- Total Applications
- Default Rate
- Total Loan Amount
- Average Credit Score

**Interactive Filters**

- Age Group
- Employment Type
- Loan Purpose

**Visualizations**

- Loan Applications by Purpose
- Loan Default Distribution
- Loan Applications by Employment Type
- Loan Applications by Credit Category

---

## 👥 Customer Analysis

**KPIs**

- Default Customers
- Average Income
- Average Loan Amount
- Average Interest Rate

**Interactive Filters**

- Credit Category
- Employment Type
- Education

**Visualizations**

- Default Rate by Age Group
- Default Rate by Income Group
- Default Rate by Education
- Default Rate by Marital Status

---

## 💰 Loan Analysis

**KPIs**

- Total Loan Amount
- Average Loan Amount
- Average Interest Rate
- Average Loan Term

**Interactive Filters**

- Loan Purpose
- Loan Term
- Credit Category

**Visualizations**

- Total Loan Amount by Loan Purpose
- Loan Applications by Loan Term
- Average Interest Rate by Loan Purpose
- Default Rate by Loan Purpose

---

## ⚠️ Risk Analysis

**KPIs**

- High Risk Customers
- Mortgage Holders
- Co-signer Customers
- Average Credit Score

**Interactive Filters**

- Credit Category
- Employment Type
- Age Group

**Visualizations**

- Default Rate by Credit Category
- Mortgage vs Default
- Co-signer vs Default
- High-Risk Customer Analysis

---

# 📸 Dashboard Preview

## Executive Summary

*(<img width="744" height="538" alt="Executive Summary" src="https://github.com/user-attachments/assets/6aade01b-3c10-4410-9b4b-dcd485194e9c" />
)*

---

## Customer Analysis

*(<img width="734" height="545" alt="Customer Analysis" src="https://github.com/user-attachments/assets/bf084077-911b-4430-b663-cc9330d2d468" />
)*

---

## Loan Analysis

*(<img width="732" height="543" alt="Loan Analysis" src="https://github.com/user-attachments/assets/8e8ce46d-6bf9-491f-857d-981e7e5bd45f" />
)*

---

## Risk Analysis

*(<img width="737" height="533" alt="Risk Analysis" src="https://github.com/user-attachments/assets/b49c19e2-88f1-476c-9364-6cbe8d28565a" />
)*

---

# 💡 Key Findings

- Customer credit category is strongly associated with loan default.
- Certain customer segments have higher default rates than others.
- Loan purpose influences application volume and default behaviour.
- Statistical testing supports several relationships identified during exploratory analysis.
- Customer segmentation provides valuable insights for credit risk assessment.

---

# 💼 Business Recommendations

- Include credit category as an important factor during loan approval.
- Review applications from higher-risk customer segments more carefully.
- Monitor default trends across different loan purposes.
- Use customer segmentation to support lending decisions.
- Continue monitoring portfolio performance through interactive dashboards.

---

# 📁 Repository Structure

```
credit-risk-analysis/
│
├── data/
│   ├── raw/
│   ├── cleaned/
│   └── featured/
│
├── notebooks/
│
├── sql/
│
├── powerbi/
│
├── screenshots/
│
└── README.md
```

# 👨‍💻 Author

**Rahul**

Aspiring Data Analyst

### Skills

- Python
- SQL
- MySQL
- Power BI
- Excel
- Statistics
- Git
- GitHub

---

⭐ If you found this project useful, consider giving it a star.
