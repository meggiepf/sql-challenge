DROP TABLE dept_manager, dept_emp; dept_emp , dept_manager, employees, salaries, titles;


CREATE TABLE departments (
  "Department Number" VARCHAR(30) PRIMARY KEY,
  "Department Name" VARCHAR(30)
);

CREATE TABLE titles (
  "Title ID" VARCHAR(30) PRIMARY KEY,
  "Title" VARCHAR(30)
);

CREATE TABLE employees (
  "Employee Number" INT PRIMARY KEY,
  "Title ID" VARCHAR(30),
  "Birth Date" VARCHAR(30),
  "First Name" VARCHAR(30),
  "Last Name" VARCHAR(30),
  "Sex" VARCHAR(30),
  "Hire Date" VARCHAR(30),
  FOREIGN KEY ("Title ID") REFERENCES titles("Title ID")
);

CREATE TABLE dept_manager (
  "Department Number" VARCHAR(30),
  "Employee Number" INT,
   FOREIGN KEY ("Department Number") REFERENCES departments("Department Number"),
   FOREIGN KEY ("Employee Number") REFERENCES employees("Employee Number")
);

CREATE TABLE dept_emp (
  "Employee Number" INT,
  "Department Number" VARCHAR(30),
  FOREIGN KEY ("Department Number") REFERENCES departments("Department Number"),
  FOREIGN KEY ("Employee Number") REFERENCES employees("Employee Number")
);


CREATE TABLE salaries (
  "Employee Number" INT,
  "Salary" INT,
  FOREIGN KEY ("Employee Number") REFERENCES employees("Employee Number")
);




