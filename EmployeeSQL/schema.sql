-- Create table called "departments" and fields in the table
CREATE TABLE departments (
	dept_no VARCHAR(10) NOT NULL,
	dept_name VARCHAR(50) NOT NULL,
	PRIMARY KEY (dept_no)
);

	
-- Create table called "titles" and fields in the table
CREATE TABLE titles (
	title_id VARCHAR(10) NOT NULL,
	title VARCHAR(50) NOT NULL,
	PRIMARY KEY (title_id)
);

	
-- Create table called "employees" and fields in the table
CREATE TABLE employees (
	emp_no INT NOT NULL,
	emp_title_id VARCHAR(10) NOT NULL REFERENCES titles (title_id),
	birth_date DATE,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	sex VARCHAR(10),
	hire_date DATE,
	PRIMARY KEY (emp_no)	
);
	
-- Create table called "dept_emp" and fields in the table
CREATE TABLE dept_emp (
	emp_no INT NOT NULL REFERENCES employees (emp_no),
	dept_no VARCHAR(10) NOT NULL REFERENCES departments (dept_no)
);

	
-- Create table called "dept_manager" and fields in the table
CREATE TABLE dept_manager (
	dept_no VARCHAR(10) NOT NULL REFERENCES departments (dept_no),
	emp_no INT NOT NULL REFERENCES employees (emp_no)	
);

	
-- Create table called "salaries" and fields in the table
CREATE TABLE salaries (
	emp_no INT NOT NULL REFERENCES employees (emp_no),
	salary INT NOT NULL,
	PRIMARY KEY (emp_no)
);


