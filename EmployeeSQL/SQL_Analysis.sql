-- Data Analysis
-- List the employee number, last name, first name, sex, and salary of each employee.
SELECT 
	e.emp_no, 
	e.last_name,
	e.first_name,
	e.sex,
	s.salary
FROM employees as e
Join salaries as s 
on s.emp_no = e.emp_no
;

-- List the first name, last name, and hire date for the employees who were hired in 1986.

SELECT 
	first_name,
	last_name,
	hire_date
From employees
WHERE hire_date like '%1986';

-- List the manager of each department along with their department number, department name, employee number, last name, and first name.

SELECT 
	d.dept_no,
	d.dept_name, 
	e.emp_no,
	e.last_name,
	e.first_name
FROM employees as e 
JOIN dept_manager as dm
ON e.emp_no = dm.emp_no
JOIN departments as d
on d.dept_no = dm.dept_no;

-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

SELECT 
	e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name,
	d.dept_no
FROM employees as e
JOIN dept_emp as de
ON e.emp_no = de.emp_no
JOIN departments as d
ON d.dept_no = de.dept_no;

-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

SELECT 
	first_name,
	last_name,
	sex
From employees 
WHERE first_name = 'Hercules' and last_name like 'B%';

-- List each employee in the Sales department, including their employee number, last name, and first name.

SELECT 
	e.emp_no, 
	e.last_name, 
	e.first_name
FROM employees e
JOIN dept_emp de 
ON e.emp_no = de.emp_no
JOIN departments d 
ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';

-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT 
	e.emp_no,
	e.last_name,
	e.first_name, 
	d.dept_name
FROM employees as e 
JOIN dept_emp as de 
ON e.emp_no = de.emp_no
JOIN departments as d
ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales' or  d.dept_name = 'Development';

-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).


SELECT last_name, COUNT(*) as frequency
FROM Employees
GROUP BY last_name
ORDER BY frequency DESC;
