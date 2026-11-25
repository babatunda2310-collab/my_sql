CREATE DATABASE DA_70_PROJECT;

USE DA_70_PROJECT;

CREATE table EMPLOYEES
                    (EMPLOYEE_ID int,
                    EMPLOYEE_NAME varchar(50),
                    GENDER enum('M','F'),
                    AGE INT,
                    HIRE_DATE INT,
                    DESIGNATION VARCHAR (100),
                    DEPARTMENT_ID INT,
                    location_id int,
                    salary int);
                    
   select * from employees;
      select * from department_INFO;
         select * from locationS;
   
   create table department
                          (department_id int,
                          deapartment_name varchar(100)
                                );
						
create table location
            (         location_id int,
                     location varchar(50)
                     );

-- 2
alter table employees add email varchar(20);
alter table employees modify DESIGNATION VARCHAR (200);
alter table employees drop age;
alter table employees rename column HIRE_DATE to DATE_OF_JOINING;
 
 -- 3
 RENAME  TABLE DEPARTMENT TO DEPARTMENT_INFO;
  RENAME  TABLE LOCATION TO LOCATIONS;
  
  -- 4
  truncate table EMPLOYEES;
  -- 5
  DROP TABLE EMPLOYEES;
  drop DATABASE DA_70_PROJECT;
  
  
--  constraints
-- 1
CREATE DATABASE DA_70_PROJECT;

USE DA_70_PROJECT;

  CREATE table EMPLOYEES
                    (EMPLOYEE_ID int,
                    EMPLOYEE_NAME varchar(50),
                    GENDER enum('M','F'),
                    AGE INT,
                    HIRE_DATE INT,
                    DESIGNATION VARCHAR (100),
                    DEPARTMENT_ID INT,
                    location_id int,
                    salary int
                    );
                    
                    
   select * from employees;
      select * from department;
         select * from location;
   
   create table department(
                        DEPARTMENT_ID int, 
                          deapartment_name varchar(100)
                                );
						
create table location
            (         location_id int,
                     location varchar(50)
                     );
  
  alter table department add primary key (department_id);
    alter table department modify deapartment_name varchar(100) not null , add unique   (deapartment_name);
    
    -- location
    
    alter table location add primary key (location);
       alter table location modify location_id int auto_increment;
       alter table location modify location varchar(100) not null , add unique (location);
       
	desc location;
    desc department;
    
     alter table employees add primary key (employee_id);
     
     desc employees;
     
     alter table employees modify EMPLOYEE_NAME varchar(50) not null;
       alter table employees add check (age>=18);
       
       alter table employees modify HIRE_DATE  date default (current_date);
       
       alter table employees add foreign key  (DEPARTMENT_ID)
                    references department (DEPARTMENT_ID);
                    
                    
    alter table employees add foreign key ( location_id)
                    references location (location_id);
