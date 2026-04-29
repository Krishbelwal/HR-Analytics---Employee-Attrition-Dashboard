use Employee_Attrition;
select * from Employee_Attrition;


-- kpi's --

-- kpi Total Employees
select Gender ,count(emp_id) from employee_attrition group by Gender;

-- kpi Attrition rate
select Gender , Round((sum(case when Attrition = 'Yes' Then 1 Else 0 End) / count(*)) * 100 , 2) As overall_attrition_rate from Employee_attrition group by Gender;
 
-- KPI Total Attrition -- 
select Gender , sum(case when Attrition = 'Yes' Then 1 Else 0 End) As Total_Attrition from Employee_attrition group by Gender;







                                               -- Analysis 
-- Age_group vs Attrition 
select Age_group , sum(case when Attrition = 'Yes' Then 1 Else 0 End) As Total_Attrition  from Employee_attrition 
group by 
Age_Group , Gender order by Total_Attrition desc;


-- Gender vs Attrition
select  Gender , sum(case when Attrition = 'Yes' Then 1 Else 0 End) As Total_Attrition from Employee_attrition 
group by Gender order by Total_Attrition desc;



-- Department vs Attrition company_year_attrition
select Department , sum(case when Attrition = 'Yes' Then 1 Else 0 End) As Total_Attrition from Employee_attrition 
group by Department order by Total_Attrition desc;


-- job role vs Attrition
select job_role , sum(case when Attrition = 'Yes' Then 1 Else 0 End) As Total_Attrition from Employee_attrition 
group by job_role order by Total_Attrition desc;


-- salary vs Attrition
select salary_slab , sum(case when Attrition = 'Yes' Then 1 Else 0 End) As Total_Attrition 
from Employee_attrition 
group by salary_slab
order by Total_Attrition desc;


-- overtime vs Attrition
select overtime , sum(case when Attrition = 'Yes' Then 1 Else 0 End) As Total_Attrition
from Employee_attrition 
group by overtime
order by Total_Attrition desc;


-- job_satisfaction vs Attrition
select job_satisfaction , sum(case when Attrition = 'Yes' Then 1 Else 0 End) As Total_Attrition
from Employee_attrition 
group by job_satisfaction
order by Total_Attrition desc;



-- Company year vs Atttrition
select YearsAtCompany , sum(case when Attrition = 'Yes' Then 1 Else 0 End) As Total_Attrition
from Employee_attrition 
group by YearsAtCompany
order by Total_Attrition desc;

-- promption vs Attrition -- 
select YearsSinceLastPromption , sum(case when Attrition = 'Yes' Then 1 Else 0 End) As Total_Attrition 
from Employee_attrition 
group by YearsSinceLastPromption
order by Total_Attrition desc;


-- Current Role vs Attrition-- 
select YearsINCurrentRole, sum(case when Attrition = 'Yes' Then 1 Else 0 End) As Total_Attrition
from Employee_attrition 
group by 
YearsINCurrentRole
order by Total_Attrition desc;

