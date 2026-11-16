create database companyy;
use companyy;
create table employees (EMP_ID int primary key ,First_name VARCHAR(100), Last_name VARCHAR(100), DEPARTMENT VARCHAR(100),SALARY DECIMAL(10,2),HIRE_DATE date);
insert into employees VALUES (1,"John","Doe","IT", 60000.00, "2019-01-10"),
(2,"Jane", "Smith", "HR", 55000.00, "2018-03-05"),
(3,"Emily", "Jones", "IT", 62000.00, "2020-07-23"),
(4,"Michael", "Brown", "Finance", 70000.00, "2016-05-14"),
(5,"Sarah", "Davis", "Finance", 69000.00, "2017-11-18"),
(6,"David", "Johnson", "HR", 48000.00, "2021-09-10");
select * from employees;
SELECT DEPARTMENT, ROUND(AVG(SALARY)) AS Average_Salary FROM employees GROUP BY DEPARTMENT;
SELECT COUNT(*) AS Total_EMPs FROM employees WHERE HIRE_DATE > '2019-12-31';
SELECT DEPARTMENT, SUM(SALARY) AS Total_Salary FROM employees GROUP BY DEPARTMENT ORDER BY Total_Salary;
SELECT MAX(SALARY) AS highest_salary FROM employees WHERE DEPARTMENT = 'Finance';
SELECT * FROM employees ORDER BY SALARY DESC LIMIT 3;
SELECT DEPARTMENT, AVG(SALARY) AS AVG_Salary FROM employees GROUP BY DEPARTMENT ORDER BY AVG_Salary ASC LIMIT 1;
SELECT DEPARTMENT, COUNT(*) AS total_employees FROM employees GROUP BY DEPARTMENT ORDER BY total_employees ;
SELECT ROUND(AVG(SALARY)) AS average_salary FROM employees WHERE hire_date < '2020-01-01';
SELECT first_name, last_name FROM employees WHERE DEPARTMENT = 'IT' ORDER BY HIRE_DATE DESC;
SELECT SUM(SALARY) AS total_salary FROM employees WHERE HIRE_DATE > '2019-01-01' ORDER BY SALARY;
SELECT MIN(SALARY) AS lowest_salary FROM employees WHERE DEPARTMENT = 'HR';
SELECT DEPARTMENT,SUM(SALARY) AS total_salary FROM employees GROUP BY DEPARTMENT ORDER BY total_salary DESC LIMIT 2;
SELECT * FROM employees WHERE hire_date > '2018-12-31' ORDER BY salary DESC LIMIT 4;
SELECT MAX(SALARY) AS Highest_Salary_IT FROM employees WHERE DEPARTMENT = 'IT';
SELECT DEPARTMENT, ROUND(AVG(SALARY)) AS AVG_Salary FROM employees GROUP BY DEPARTMENT HAVING AVG(SALARY) > 60000;