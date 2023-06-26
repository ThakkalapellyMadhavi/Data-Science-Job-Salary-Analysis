use data_salary;
select * from `data science jobs salaries`;
Alter table `data science jobs salaries` rename to ds_salaries;

-- Task 1-- 
select count(*) from ds_salaries;

-- Task 2
select avg(salary),experience_level from ds_salaries group by experience_level;

-- Task 3
-- Count of employee residence in different employee type
select count(employee_residence),employment_type  from ds_salaries group by employment_type  ;
-- count of employee type in different in different employee_residence
select count(employment_type),employee_residence  from ds_salaries group by employee_residence  ;

-- task 5
-- Average salary in each year
select avg(salary_in_usd),work_year from ds_salaries group by work_year;

-- --Task 6
-- Top 5 Employee residence with highest salary paid
select avg(salary_in_usd),employee_residence from ds_salaries group by employee_residence order by avg(salary_in_usd) desc limit 5 ;

-- Task7
-- Which country has employed least  number employees in data science domain?
select count(company_location),company_location from ds_salaries group by company_location having count(company_location)=1  ;

select count(*) from (
    select count(company_location),company_location from ds_salaries group by company_location having count(company_location)=1  
) as least_employees;

-- Task 8
select count(job_title),job_title from ds_salaries group by job_title ;
select job_title,count(experience_level) from ds_salaries group by job_title ;


