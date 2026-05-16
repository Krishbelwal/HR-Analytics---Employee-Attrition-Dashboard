# HR Analytics - Employee Attrition Dashboard

![Front page](Front_Page.png)  
![Dashboard1](Dashboard(1).png)  
![Dashboard2](Dashboard2.png)  

---

## 1. Project Overview
This project analyzes employee attrition data to identify key factors influencing employee turnover, such as age, gender, department, salary, job role, job satisfaction, and career growth patterns.  

The goal is to understand why employees leave the company and provide data-driven insights to improve employee retention and support better HR decision-making.

---

## 2. Key Metrics
- Age group vs Attrition  
- Gender vs Attrition rate  
- Department vs Attrition  
- Salary vs Attrition  
- Years in current role vs Attrition  
- Job Role vs Attrition  
- Job Satisfaction vs Attrition  
- Promotion vs Attrition  
- Years in company vs Attrition  

---

## 3. Dataset
- **Source:** Kaggle  
- **Total Records:** 15,000  
- **Columns:** 38  

---

## 4. Tools & Technologies
- **SQL (MySQL):** Data cleaning, data transformation, creating views, and exploratory data analysis  
- **Power BI:** Dashboard creation, data visualisation, and interactive reporting  
- **DAX (Data Analysis Expressions):** Creating KPIs like Total Employees, Attrition Rate, and custom measures  
- **Power Query:** basic data cleaning 

---

## 5. Data Cleaning Steps
- Checked duplicates (Emp_ID-wise and row-wise)  
- Handled null values using the `COALESCE` function  
- Changed data types where required  
- Performed data transformation  

Example:
- Converted values like `0-5` in "Years at Company" column to `0-5y` for better readability  

---

## 6. Dataset Link
- **Dataset:** [Download CSV](https://github.com/Krishbelwal/HR-Analytics---Employee-Attrition-Dashboard/blob/main/Dataset.csv)  

---

## 7. Project Workflow
1. Data Import: Imported dataset from Kaggle  
2. Business Understanding: Identified key problems and requirements  
3. Defined KPIs: Age group, gender, department, etc. vs attrition  
4. Data Cleaning & Transformation: Cleaned data using MySQL and Power Query  
5. Data Analysis: Performed SQL-based analysis  
6. View Creation: Created SQL views for Power BI import  
7. Power BI Import: Loaded processed data into Power BI  
8. DAX Measures: Created KPIs like Total Employees, Attrition Count, etc.  
9. Dashboard Development: Built interactive dashboards with visuals and slicers  
10. Insights & Recommendations: Derived business insights for decision-making  

---

## 8. Key Insights & Business Recommendations

### 1. Age Group
**Insight:** Highest attrition is in the 26–35 age group possibly due to salary, overtime, job satisfaction , current role , which indicates that employees are leaving company due to compansion issues , work life balance issues and limited carrier growth opportunity.  
**Recommendation:** Improve salary structure and provide clear career growth opportunities and mange the workload specially for 26-23 age group employees.


### 2. Gender
**Insight:** Slightly higher attrition among male employees, possibly due to workload and delayed promotions and low salary(0-5 LPA) in the (0–5 years) experience group. which indicates that early carrier male employees in the company are facing chalenges related to worklife balance , limited carrier growth and low compansion. 
**Recommendation:**  The company should focus on a balanced workload and timely promotions and better salary structure for early male employees.


### 3. Department
**Insight:** The R&D department shows the highest attrition, mainly due to salary concerns and overtime issues.  
**Recommendation:**  Improve salary structure and work environment  for the R&D department Employees.


### 4. Job Role
**Insight:** Higher attrition observed in Lab Technician and Sales Executive roles.  
**Recommendation:** Improve salary, workload balance, and career growth opportunities.


### 5. Job Satisfaction
**Insight:** Employees with low or neutral satisfaction are more likely to leave , espically those with 0-5 years in current role , comapny and 0-5 years promtions period.  
**Recommendation:** Conduct carrer development opportunities and improve the promption cycle.


### 6. Years in Company
**Insight:** Employees with 0–5 years of experience show the highest attrition mainly due to the low job satisfaction, low salary, overtime  and delayed promotions, which indicates that lack of career growth and low engagement are the major reasons.  
**Recommendation:** The company should conduct career development programs, timely promotions , manage workload and focus on better employee engagement to reduce attriion specially with 0-5 years employees.


### 7. Salary
**Insight:** Employees with lower salaries have higher attrition which indicates low compansion may be a major factor.  
**Recommendation:** Improve salary structure and performance based rewards to retain the employees.


### 8. Promotions
**Insight:** Lack of promotions increases attrition.  
**Recommendation:** introduce timely promotion policy.


### 9. Current Role 
**Insight:** Long duration in the same role leads to the higher attrition.  
**Recommendation:** Introduce internal job movement opportunities to retain the employees.

---

## 9. Conclusion

This HR Analytics project provides clear insights into the key factors driving employee attrition. The analysis shows that attrition has been mainly influenced by salary, workload issues and limited career growth opportunities.
