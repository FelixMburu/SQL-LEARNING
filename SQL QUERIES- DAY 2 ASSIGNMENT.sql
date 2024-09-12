'''
Assignment
 1. Select specific columns: name, age and salary
 2. Filter the records, name and salary of employees working in a department
 3. Sort the data: sort the data by salary
 4. Find the top 3 highest paid employees
 5. Find all the unique departments you have
 6. Find all the departments either in X department and have a salary greater than Y eg 35,000
 7. Select the 2 youngest employees and show name and date when they were hired
 8. Show the distinct departments and sort them in alphabetic order
 '''

#creating a new database
CREATE DATABASE my_first_assignment;

#select this database to use
USE my_first_assignment;

#creating a table
CREATE TABLE employees (
	id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    salary INT,
    department VARCHAR(100)
    );

#adding the date_hired column
ALTER TABLE employees
ADD date_hired DATE; 

# 1. Select specific columns: name, age and salary
SELECT name, age, salary from employees

#populate the table
INSERT INTO employees (name,age, salary, department, date_hired) 
VALUES 
('Martin', 45, 60000, 'HR', '2022-08-22'),
('Joy', 25, 45000, 'Marketing', '2023-9-3'),
('Lucy', 56, 70000, 'IT', '2019-7-2'),
('Maggie', 47, 40000, 'SALES', '2004-8-8'),
('Joe', 49, 69000, 'IT', '2008-11-30'),
('Lucy', 58, 50000, 'Marketing', '2021-9-17'),
('Annette', 35, 70000, 'HR', '2012-5-5'),
('Benedict', 55, 100000, 'SALES', '2015-7-13');

#  2. Filter the records, name and salary of employees working in a department

SELECT name, age, salary 
FROM employees
WHERE department = 'HR';

SELECT name, age, salary
FROM employees
WHERE department = 'SALES';

# 3. Sort the data by salary

SELECT * 
FROM employees
ORDER BY salary DESC

SELECT*
FROM employees
ORDER BY salary ASC

#  4. Find the top 3 highest paid employees

SELECT *
FROM employees
ORDER BY salary DESC
LIMIT 3;

#  5. Find all the unique departments you have

SELECT DISTINCT department
FROM employees

# 6. Find all the departments in X department and have a salary greater than Y eg 35,000
SELECT *
FROM employees
WHERE (department = 'Marketing' AND salary > 47000);

#  7. Select the 2 youngest employees and show name and date when they were hired

SELECT name, date_hired
FROM employees
ORDER BY age ASC
LIMIT 2;

# 8. Show the distinct departments and sort them in alphabetic order

SELECT DISTINCT department
FROM employees
ORDER BY department ASC