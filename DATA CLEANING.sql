create database human_resource;
use human_resource;

select * from`human resource`;

describe  `human resource`;

-- change the name of the first column to be descriptive

ALTER TABLE `human resource`
rename column `ï»¿id`  to emp_id; 

ALTER TABLE `human resource`
modify birthdate date;

-- str_to_date(): is to convert string/text to date

UPDATE `human resource`
SET birthdate = case when birthdate like "%/%/%" 
then date_format (str_to_date(birthdate, "%m/%d/%Y"), "%Y-%m-%d" )
else date_format( str_to_date(birthdate, "%m-%d-%Y"), "%Y-%m-%d" ) end;

UPDATE `human resource`
SET hire_date = case when hire_date like "%/%/%" 
then date_format (str_to_date(hire_date, "%m/%d/%Y"), "%Y-%m-%d" )
else date_format( str_to_date(hire_date, "%m-%d-%Y"), "%Y-%m-%d" ) end;
  
Select * from `human resource`;

-- How many employees work in head quarter versus romote
create  view location as
select location, count(emp_id)as total_employees
From `human resource`
group by location;

-- show the age distribution of the employees




 
 


