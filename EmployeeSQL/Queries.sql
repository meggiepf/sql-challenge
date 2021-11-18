-- Question 1 List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT employees."Employee Number", employees."Last Name", employees."First Name", employees."Sex", salaries."Salary"
FROM employees
JOIN salaries
ON (employees."Employee Number" = salaries."Employee Number")
;

-- Question 2 List first name, last name, and hire date for employees who were hired in 1986.
SELECT employees."Last Name", employees."First Name", employees."Hire Date"
FROM employees
WHERE "Hire Date" like '%1986'
;

-- Question 3 List the manager of each department with the following information: 
-- department number, department name, the manager's employee number, last name, first name.
SELECT departments."Department Number", departments."Department Name", dept_manager."Employee Number", employees."First Name", employees."Last Name" 
from employees
join dept_manager
ON (employees."Employee Number" = dept_manager."Employee Number")
join departments
ON (dept_manager."Department Number" = departments."Department Number")
;


-- Question 4 List the department of each employee with the following information: 
-- employee number, last name, first name, and department name.
SELECT employees."Employee Number", employees."First Name", employees."Last Name",  departments."Department Name"
from employees
join dept_emp
ON (employees."Employee Number" = dept_emp."Employee Number")
join departments
ON (dept_emp."Department Number" = departments."Department Number")
;

-- Question 5 List first name, last name, and sex for employees whose first name is "Hercules" 
-- and last names begin with "B."
SELECT employees."First Name", employees."Last Name", employees."Sex"
FROM employees
WHERE "First Name" = 'Hercules' AND "Last Name" like 'B%'
;

-- Question 6 List all employees in the Sales department, including their employee number, last name, first name, and department name.

SELECT employees."Employee Number", employees."First Name", employees."Last Name",  departments."Department Name"
from employees
join dept_emp
ON (employees."Employee Number" = dept_emp."Employee Number")
join departments
ON (dept_emp."Department Number" = departments."Department Number")
WHERE "Department Name" = 'Sales'
;

--Question 7 List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT employees."Employee Number", employees."First Name", employees."Last Name",  departments."Department Name"
from employees
join dept_emp
ON (employees."Employee Number" = dept_emp."Employee Number")
join departments
ON (dept_emp."Department Number" = departments."Department Number")
WHERE (departments."Department Name" = 'Sales') OR (departments."Department Name" = 'Development')
;

--Question 8 In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT "Last Name", COUNT (*)
FROM employees
GROUP BY "Last Name"
HAVING COUNT(*) > 1
ORDER BY COUNT DESC;
