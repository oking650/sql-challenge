--Question 1
--Generates a list of employees with salary
SELECT e.emp_no
	, e.first_name
	, e.last_name
	, e.hire_date
	, s.salary
FROM employees e
	JOIN salaries s on s.emp_no = e.emp_no
WHERE 1=1;

-- Question 2
-- Generates a list of employees who were hired in 1986
SELECT e.first_name
	, e.last_name
	, e.hire_date
FROM employees e
WHERE 1=1
	AND date_part('year',e.hire_date) = '1986';

-- Question 3
-- Generates a list of managers from each department
Select dm.dept_no
	, d.dept_name
	, e.emp_no
	, e.last_name
	, e.first_name
FROM dept_manager dm
	JOIN employees e on e.emp_no = dm.emp_no
	JOIN departments d on d.dept_no = dm.dept_no
WHERE 1=1;

--Question 4
-- Generates a list of employees, including department information
Select d.dept_no
	, e.emp_no
	, e.last_name
	, e.first_name
	, d.dept_name
FROM dept_emp de
	JOIN employees e on e.emp_no = de.emp_no
	JOIN departments d on d.dept_no = de.dept_no
WHERE 1=1;

--Question 5
--Filters employee list based on first name and last name
SELECT e.first_name
	, e.last_name
	, e.sex
FROM employees e
WHERE 1=1
	AND e.first_name = 'Hercules'
	AND e.last_name like ('B%')

--Question 6
--List each employee in the Sales department
Select e.emp_no
	, e.last_name
	, e.first_name
FROM dept_emp de
	JOIN employees e on e.emp_no = de.emp_no
	JOIN departments d on d.dept_no = de.dept_no
WHERE 1=1
	AND d.dept_name = 'Sales';
	
--Question 7
--List each employee in the Sales and Development departments
Select e.emp_no
	, e.last_name
	, e.first_name
	, d.dept_name
FROM dept_emp de
	JOIN employees e on e.emp_no = de.emp_no
	JOIN departments d on d.dept_no = de.dept_no
WHERE 1=1
	AND d.dept_name = 'Sales' OR d.dept_name = 'Development';
	
--Question 8
--List the frequency counts of employee last names
Select e.last_name
	, count(e.last_name)
FROM employees e
WHERE 1=1
GROUP BY e.last_name
ORDER BY count(e.last_name) DESC