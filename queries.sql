 -- Determine Retirement Eligibility
select first_name, last_name
from employees
where birth_date between '1952-01-01' AND '1955-12-31'
 
SELECT first_name, last_name
FROM employees
WHERE birth_date BETWEEN '1952-01-01' AND '1952-12-31';

- 1952 Birth Dates
select first_name, last_name
from employees
where birth_date between '1952-01-01' AND '1952-12-31'

--1953 Birth Dates
select first_name, last_name
from employees
where birth_date between '1953-01-01' AND '1953-12-31'

-- 1954 Birth Dates
select first_name, last_name
from employees
where birth_date between '1954-01-01' AND '1954-12-31'

--1955 Birth Dates
select first_name, last_name
from employees
where birth_date between '1955-01-01' AND '1955-12-31'

--Narrow the Search for Retirement Eligibility
-- Retirement eligibility
SELECT first_name, last_name
FROM employees
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31';

-- Retirement eligibility
SELECT first_name, last_name
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

-- Number of employees retiring
SELECT COUNT(first_name)
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

--Create New Tables
SELECT first_name, last_name
INTO retirement_info
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');
SELECT * FROM retirement_info;