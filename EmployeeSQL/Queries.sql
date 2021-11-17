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

-- Question 5 List first name, last name, and sex for employees whose first name is "Hercules" 
-- and last names begin with "B."

-- Question 6 List all employees in the Sales department, including their employee number, last name, first name, and department name.

--Question 7 List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

--Question 8 In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

Select "Employee Number", "Last Name", "First Name", "Sex", "Salary" FROM employees

Select "Employee Number", "Last Name", "First Name", "Sex", "Salary" FROM(
SELECT employees."Employee Number", employees."Title ID", "Birth Date", "First Name", "Last Name", "Sex", "Hire Date"
FROM employees
JOIN salaries ON
employees."Employee Number" = salaries."Employee Number");

SELECT departments."Department Number", departments."Department Name"
FROM dept_manager
INNER JOIN departments ON
dept_manager."Department Number"=departments."Department Number";

SELECT employees."Employee Number", employees."Title ID", "Birth Date", "First Name", "Last Name", "Sex", "Hire Date"
FROM employees
JOIN dept_emp ON
employees."Employee Number" = dept_emp."Employee Number";

SELECT departments."Department Number", departments."Department Name", dept_manager."Employee Number"
FROM departments
JOIN dept_manager ON
dept_manager."Department Number"=departments."Department Number";