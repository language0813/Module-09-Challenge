-- List the employee number, last name, first name, sex, and salary of each employee.
-- I set the data order by 'emp_no' field.
SELECT employees.emp_no, last_name, first_name, sex, salary
	FROM employees INNER JOIN salaries ON employees.emp_no = salaries.emp_no
	ORDER BY employees.emp_no;


-- List the first name, last name, and hire date for the employees who were hired in 1986.
-- I set the data order by 'hire_date' field to double check the filtered range.
SELECT first_name, last_name, hire_date
	FROM employees
	WHERE hire_date >= '1986-01-01' AND hire_date <= '1986-12-31'
	ORDER BY hire_date;


-- List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT dm.dept_no, dept_name, dm.emp_no, last_name, first_name
	FROM dept_manager dm INNER JOIN departments d ON dm.dept_no = d.dept_no
	INNER JOIN employees e ON dm.emp_no = e.emp_no;

	
-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
-- I set the data order by 'emp_no' field.
SELECT de.emp_no, last_name, first_name, de.dept_no, dept_name
	FROM dept_emp de INNER JOIN employees e ON de.emp_no = e.emp_no
	INNER JOIN departments d ON de.dept_no = d.dept_no
	ORDER BY emp_no;


-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
-- I set the data order by 'last_name' field.
SELECT first_name, last_name, sex
	FROM employees
	WHERE first_name = 'Hercules' AND last_name ILIKE 'B%'
	ORDER BY last_name;


-- List each employee in the Sales department, including their employee number, last name, and first name.
-- I set the data order by 'emp_no' field.
SELECT de.emp_no, last_name, first_name, dept_name
	FROM dept_emp de INNER JOIN employees e ON de.emp_no = e.emp_no
	INNER JOIN departments d ON de.dept_no = d.dept_no
	WHERE dept_name = 'Sales'
	ORDER BY emp_no;


-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
-- I set the data order by 'emp_no' field.
SELECT de.emp_no, last_name, first_name, dept_name
	FROM dept_emp de INNER JOIN employees e ON de.emp_no = e.emp_no
	INNER JOIN departments d ON de.dept_no = d.dept_no
	WHERE dept_name = 'Sales' OR dept_name = 'Development'
	ORDER BY emp_no;


-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT last_name, COUNT(last_name) AS counts
	FROM employees
	GROUP BY last_name
	ORDER BY counts DESC;