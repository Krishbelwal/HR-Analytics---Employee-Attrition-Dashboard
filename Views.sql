use Employee_Attrition;
select * from Employee_Attrition;


                                                                         -- kpi's --

-- kpi Total Employees
create view kpi_Total_Employees As select Gender ,count(emp_id) from employee_attrition group by Gender;

-- kpi Attrition rate
create view kpi_Attrition_rate As select Gender , Round((sum(case when Attrition = 'Yes' Then 1 Else 0 End) / count(*)) * 100 , 2) As overall_attrition_rate from Employee_attrition group by Gender;
 
-- KPI Total Attrition -- 
create view Kpi_Total_Attrition As select Gender , sum(case when Attrition = 'Yes' Then 1 Else 0 End) As Total_Attrition from Employee_attrition group by Gender;







                                               -- Analysis 


-- Attrition vs Age
create view Age_Attrition As 
select Emp_id , Gender , Age , sum(case when Attrition = 'Yes' Then 1 Else 0 End) As Total_Attrition , Round(100.0 * sum(case when Attrition = 'Yes' Then 1 Else 0 End ) / count(*) , 2) As Age_Attrition_rate from Employee_attrition 
group by 
Emp_id , Gender , Age order by Total_Attrition desc;


-- Age_group vs Attrition
create view AgeGroup_Attrition As 
select Emp_id ,Gender , Age_group , sum(case when Attrition = 'Yes' Then 1 Else 0 End) As Total_Attrition , Round(100.0 * sum(case when Attrition = 'Yes' Then 1 Else 0 End ) / count(*) , 2) As Age_Group_Attrition_rate from Employee_attrition 
group by 
 Emp_id , Age_Group , Gender order by Total_Attrition desc;


-- Gender vs Attrition
create view Gender_Attrition As 
select Emp_id , Gender , sum(case when Attrition = 'Yes' Then 1 Else 0 End) As Total_Attrition , Round(100.0 * sum(case when Attrition = 'Yes' Then 1 Else 0 End ) / count(*) , 2) As Gender_Attrition_rate from Employee_attrition 
group by 
Emp_id , Gender order by Total_Attrition desc;



-- Department vs Attritioncompany_year_attrition
create view Departmet_Attrition As 
select Emp_id , Gender , Department , sum(case when Attrition = 'Yes' Then 1 Else 0 End) As Total_Attrition ,  Round(100.0 * sum(case when Attrition = 'Yes' Then 1 Else 0 End ) / count(*) , 2) As Department_Attrition_rate from Employee_attrition 
group by 
Emp_id , Department , Gender order by Total_Attrition desc;


-- job role vs Attrition
create view jobRole_Attritionn As 
select Emp_id , Gender , job_role , sum(case when Attrition = 'Yes' Then 1 Else 0 End) As Total_Attrition , Round(100.0 * sum(case when Attrition = 'Yes' Then 1 Else 0 End ) / count(*) , 2) As job_role_Attrition_rate from Employee_attrition 
group by 
Emp_id , job_role , Gender  order by Total_Attrition desc;


-- salary vs Attrition
create view Salary_Attrition As 
select Emp_id , Gender , salary_slab , sum(case when Attrition = 'Yes' Then 1 Else 0 End) As Total_Attrition , Round(100.0 * sum(case when Attrition = 'Yes' Then 1 Else 0 End ) / count(*) , 2) As salary_slab_Attrition_rate 
from Employee_attrition 
group by 
Emp_id , salary_slab , Gender 
order by Total_Attrition desc;


-- overtime vs Attrition
create view overtime_Attrition As 
select Emp_id , Gender , overtime , sum(case when Attrition = 'Yes' Then 1 Else 0 End) As Total_Attrition , Round(100.0 * sum(case when Attrition = 'Yes' Then 1 Else 0 End ) / count(*) , 2) As overtime_Attrition_rate 
from Employee_attrition 
group by Emp_id , overtime , Gender 
order by Total_Attrition desc;


-- job_satisfaction vs Attrition
create view job_satisfaction_Attrition As 
select Emp_id , Gender , job_satisfaction , sum(case when Attrition = 'Yes' Then 1 Else 0 End) As Total_Attrition , Round(100.0 * sum(case when Attrition = 'Yes' Then 1 Else 0 End ) / count(*) , 2) As job_satisfaction_Attrition_rate 
from Employee_attrition 
group by Emp_id , job_satisfaction , Gender 
order by Total_Attrition desc;

-- Company year vs Atttrition
create view Company_year_Attrition As 
select YearsAtCompany , sum(case when Attrition = 'Yes' Then 1 Else 0 End) As Total_Attrition , Round(100.0 * sum(case when Attrition = 'Yes' Then 1 Else 0 End ) / count(*) , 2) As YearsAtCompany_Attrition_rate 
from Employee_attrition 
group by Emp_id , YearsAtCompany , Gender 
order by Total_Attrition desc;

-- promption vs Attrition -- 
create view Promption_Attrition As 
select Emp_id , Gender , YearsSinceLastPromption , sum(case when Attrition = 'Yes' Then 1 Else 0 End) As Total_Attrition , Round(100.0 * sum(case when Attrition = 'Yes' Then 1 Else 0 End ) / count(*) , 2) As YearsSinceLastPromption_Attrition_rate 
from Employee_attrition 
group by Emp_id , YearsSinceLastPromption , Gender 
order by Total_Attrition desc;


-- Current Role vs Attrition-- 
create view CurrentRole_Attrition As 
select Emp_id , Gender , YearsINCurrentRole, sum(case when Attrition = 'Yes' Then 1 Else 0 End) As Total_Attrition , Round(100.0 * sum(case when Attrition = 'Yes' Then 1 Else 0 End ) / count(*) , 2) As YearsINCurrentRole_Attrition_rate 
from Employee_attrition 
group by 
Emp_id , YearsINCurrentRole , Gender 
order by Total_Attrition desc;

