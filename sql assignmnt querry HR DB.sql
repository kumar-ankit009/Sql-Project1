/*-------------------------------  SQL PROJECT ------------------*/
/*-------------------------------  HR DATABASE EXERCISE ---------*/
USE hr ;
/*-- Write a querry to display the names (first_name, last_name) using alias name "First_Name", "Last_name" */
SELECT first_name "First_Name", last_name "Last_Name"
FROM employees ;
/*--- Write a querry to display unique departments_id from employee table*/
SELECT DISTINCT department_id 
FROM employees;
/*-------- Write a querry to get all the employees detail from employees table order by first name desc */------
SELECT *
FROM employees
ORDER BY first_name DESC ;
/* --- Write a querry to get the names (first_name, last_name),salary,pf of all the employees(pf calculate 15% of salary) */ ------
SELECT first_name, last_name, salary, salary*.15pf
FROM employees ;
/* --- Write a querry to get employees id , names(first_name, last_name), salary in ascending order of salary */ -------
SELECT employee_id, first_name, last_name, salary 
FROM employees 
ORDER BY salary;
/*------------ Write a querry to get the total salary payable to employee */ ----------
SELECT SUM(salary)
FROM employees ;
/* ----------- Write a querry to get min & max salary from employee table */ --------------
SELECT MAX(salary), MIN(salary)
FROM employees ;
/*----------- Write a querry to get the avg salary and the number of employee in the employee table */ ----------
SELECT AVG(salary), COUNT(*)
FROM employees;
/*-------- --Write a querry to get number of employee working with the company */ ------------------
SELECT COUNT(*) as number_of_employees
FROM employees ;
/* --------- Write a querry to get nuber of job available in employee table */ ---------------
SELECT COUNT(DISTINCT job_id) 
FROM employees;
/* ------------ Write a querry to get all first name from employee table in upper case -----------*/
SELECT UPPER(first_name) 
FROM employees;
/*------------- Write a querry to get the first 3 charactter from first name from employee table */ ----------
SELECT first_name, LEFT(first_name,3)
FROM employees ; 
/* ------ Write a querry to get first_name fom employee table after removing the white spaces from both the sides */ ---
SELECT TRIM(first_name)
FROM employees ;  
/*--------- Write a querry to get the length of employee_Name (first_name,last_name ) from employee table */----------
SELECT first_name,last_name, LENGTH(first_name)+LENGTH(last_name)  'Length of  Names'
FROM employees ;
/* -------- Write a querry to check if the first_name feild of employee table contains number*/--------------
/* -- Write a querry to display the name and salary for all employee whose salary is not in range of 10000- 15000*/--
SELECT first_name, last_name, salary
FROM employees
WHERE salary NOT BETWEEN 10000 AND 15000 ; 
/* write a querry to display the names (first_name,last_name)and dept_idfor all emp is dept 30 or 100in ASC order*/
SELECT first_name, last_name, department_id
FROM employees 
WHERE department_id IN (30, 100);
SELECT first_name, last_name, salary, department_id
FROM employees
WHERE salary NOT BETWEEN 10000 AND 15000 
AND department_id IN (30, 100);
SELECT first_name, last_name, hire_date 
FROM employees 
WHERE YEAR(hire_date)  LIKE '1987%';
SELECT first_name
FROM employees
WHERE first_name LIKE '%b%'
AND first_name LIKE '%c%' ;
SELECT last_name, job_id, salary
FROM employees
WHERE job_id IN ('IT_PROG', 'SH_CLERK')
AND salary NOT IN (4500,10000, 15000);
SELECT last_name FROM employees WHERE last_name LIKE '______';
SELECT last_name
FROM employees
WHERE last_name LIKE '___e%' ;
SELECT employees 
UPDATE phone_number = REPLACE(phone_number, '124', '999') 
WHERE phone_number LIKE '%124%';
SELECT * 
FROM employees
WHERE LENGTH(first_name) >= 8;
SELECT *
FROM employee
SET email = CONCAT(email, '@example.com') ;
SELECT RIGHT(phone_number, 4) as 'Ph.No.' FROM employees;
SELECT * FROM locations
WHERE LENGTH(street_address) <= (SELECT  MIN(LENGTH(street_address)) 
FROM locations);
SELECT first_name, last_name FROM employees WHERE INSTR(last_name,'C') > 2;
SELECT job_title, SUBSTR(job_title,1, INSTR(job_title, ' ')-1)
FROM jobs;
SELECT first_name AS "Name", LENGTH(first_name) AS "Length"
FROM employees
WHERE first_name LIKE 'A%'
OR first_name LIKE 'J%'
OR first_name LIKE 'M%'
ORDER BY first_name;
SELECT first_name,
LPAD(salary, 10, '$') as  SALARY
FROM employees;
SELECT left(first_name, 8),
REPEAT('$', FLOOR(salary/1000)) 
'SALARY($)', salary
FROM employees
ORDER BY salary DESC;
SELECT employee_id,first_name,last_name,hire_date 
FROM employees 
WHERE POSITION("07" IN DATE_FORMAT(hire_date, '%d %m %Y'))>0;
