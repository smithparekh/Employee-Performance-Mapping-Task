##ScienceQtech Employee Performance Mapping
Project Overview
This project analyzes employee data for ScienceQtech, a data science startup involved in projects such as fraud detection, market basket analysis, self-driving cars, supply chain optimization, early detection of lung cancer, customer sentiment analysis, and drug discovery. With the annual appraisal cycle approaching, the HR department requires reports on employee performance, project involvement, and salary distribution to facilitate performance mapping and training needs assessment.

As a Junior Database Administrator, your tasks include creating reports on employee details, calculating bonuses, and mapping project contributions. The goal is to support ScienceQtech's growth by identifying top performers and ensuring consistent standards across employee roles.

Dataset Description
The dataset consists of three main tables:

emp_record_table: Employee information, including personal details, role, experience, location, salary, performance rating, and project involvement.

EMP_ID, FIRST_NAME, LAST_NAME, GENDER, ROLE, DEPT, EXP, COUNTRY, CONTINENT, SALARY, EMP_RATING, MANAGER_ID, PROJ_ID
proj_table: Project details, including project name, field, start and end dates, development quarter, and current status.

PROJECT_ID, PROJ_Name, DOMAIN, START_DATE, CLOSURE_DATE, DEV_QTR, STATUS
data_science_team: Data Science team-specific details, including employee demographics and experience.

EMP_ID, FIRST_NAME, LAST_NAME, GENDER, ROLE, DEPT, EXP, COUNTRY, CONTINENT
Tasks and Queries
Database and Data Import

Create a database named employee.
Import data_science_team.csv, proj_table.csv, and emp_record_table.csv into the database.
ER Diagram

Create an Entity-Relationship (ER) diagram for the employee database.
Employee Department List

Query to list EMP_ID, FIRST_NAME, LAST_NAME, GENDER, and DEPARTMENT.
Employee Ratings Filter

Query to list employees with EMP_RATING:
Less than 2
Greater than 4
Between 2 and 4
Name Concatenation for Finance Employees

Query to concatenate FIRST_NAME and LAST_NAME of employees in the Finance department, with alias NAME.
Reporting Employees

Query to list employees with direct reports, including the number of reporters.
Department Union Query

Query to list employees in Healthcare and Finance departments using UNION.
Department Rating Summary

Query to display EMP_ID, FIRST_NAME, LAST_NAME, ROLE, DEPARTMENT, EMP_RATING, and maximum EMP_RATING by department.
Role-based Salary Range

Query to calculate minimum and maximum salary for each ROLE.
Experience-based Ranking

Query to assign experience-based ranks to each employee.
High-salary Employee View

Create a view for employees with a salary above 6000 across countries.
Experience-based Filter

Nested query to find employees with over 10 years of experience.
Stored Procedure for Experienced Employees

Create a stored procedure to retrieve employees with over 3 years of experience.
Role Standard Check Using Functions

Create a function to verify that job roles in the Data Science team align with the experience-based standard:
<=2 years: Junior Data Scientist
2-5 years: Associate Data Scientist
5-10 years: Senior Data Scientist
10-12 years: Lead Data Scientist
12-16 years: Manager
Index for Query Optimization

Create an index to optimize the search for employees with FIRST_NAME = 'Eric'.
Bonus Calculation

Query to calculate employee bonuses based on a formula: 5% of salary * EMP_RATING.
Average Salary by Region

Query to calculate average salary distribution by CONTINENT and COUNTRY.
