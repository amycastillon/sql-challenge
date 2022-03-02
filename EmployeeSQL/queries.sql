--Question 1
SELECT employees.emp_no, 
employees.last_name, 
employees.first_name, 
employees.sex,
salaries.salary
FROM employees
JOIN salaries
ON employees.emp_no = salaries.emp_no;

--Question 2
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date between '1/1/1986' and '12/31/1986';

--Question 3
SELECT dept_manager.dept_no, 
departments.dept_name, 
dept_manager.emp_no, 
employees.last_name, 
employees.first_name 
FROM dept_manager
JOIN departments
	ON (dept_manager.dept_no = departments.dept_no)
JOIN employees
	ON (dept_manager.emp_no = employees.emp_no);
	
--Question 4
SELECT dept_emp.emp_no, 
employees.last_name, 
employees.first_name, 
departments.dept_name
FROM dept_emp
JOIN departments
	ON dept_emp.dept_no = departments.dept_no
JOIN employees
	ON dept_emp.emp_no = employees.emp_no;
	
--Question 5
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' and last_name LIKE 'B%';

--Question 6
SELECT dept_emp.emp_no, 
employees.last_name, 
employees.first_name, 
departments.dept_name
FROM dept_emp
JOIN departments
	ON dept_emp.dept_no = departments.dept_no
JOIN employees
	ON dept_emp.emp_no = employees.emp_no
WHERE dept_name = 'Sales';

--Question 7
SELECT dept_emp.emp_no, 
employees.last_name, 
employees.first_name, 
departments.dept_name
FROM dept_emp
JOIN departments
	ON dept_emp.dept_no = departments.dept_no
JOIN employees
	ON dept_emp.emp_no = employees.emp_no
WHERE dept_name = 'Sales' or dept_name = 'Development';

--Question 8
SELECT last_name, count(last_name)
FROM employees
GROUP BY last_name
ORDER BY count desc;