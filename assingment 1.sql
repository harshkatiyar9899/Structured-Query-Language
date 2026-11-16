create database company;
use company;
create table employees (id INT Primary Key
Auto_Increment,
name VARCHAR(100),
position VARCHAR(100),
salary DECIMAL(10,2),
date_of_joining DATE);
INSERT INTO employees (name, position, salary, date_of_joining)
VALUES
    ('John Doe', 'Manager', 55000.00, '2020-01-15'),
    ('Jane Smith', 'Developer', 48000.00, '2019-07-10'),
    ('Alice Johnson', 'Designer', 45000.00, '2021-03-22'),
    ('Bob Brown', 'Developer', 50000.00, '2018-11-01');
    
    select * from employees where position='developer';
    SET SQL_SAFE_UPDATES = 0;
    update employees set salary= 46000 where name ='Alice Johnson';
    select * from employees;
    
    delete from employees where name  = 'Bob Brown';
    
    select * from employees where salary>48000;
    alter table employees add column email varchar(100);
    update employees set email='john.doe@company.com' where name='John Doe';
    select  name,salary from employees;
    SELECT COUNT(*) AS employee_count FROM employees WHERE date_of_joining > '2020-01-01';
    select salary from employees order by salary desc;
	alter table employees drop column email;
    select * from employees order by salary desc limit 1;