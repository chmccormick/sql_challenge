-- 1) List the employee number, last name, first name, sex, and salary of each employee.
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees AS e
JOIN salaries AS s ON s.emp_no = e.emp_no 
ORDER BY e.emp_no; 


-- 2) List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT first_name , last_name, hire_date
FROM employees
WHERE EXTRACT (year FROM hire_date) = 1986;


-- 3) List the manager of each department along with 
	--their department number, department name, employee number, last name, and first name.
SELECT dept_manager.dept_no , dept_manager.emp_no, departments.dept_name, employees.last_name , employees.first_name
FROM dept_manager
JOIN departments ON departments.dept_no = dept_manager.dept_no
JOIN employees ON employees.emp_no = dept_manager.emp_no;


-- 4) List the department number for each employee along with that employee’s 
	--employee number, last name, first name, and department name.
SELECT dept_emp.dept_no , dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
JOIN employees ON employees.emp_no = dept_emp.emp_no
JOIN departments ON departments.dept_no = dept_emp.dept_no ; 


-- 5) List first name, last name, and sex of each employee whose 
	--first name is Hercules and whose last name begins with the letter B.
SELECT first_name, last_name, sex 
FROM employees 
WHERE first_name = 'Hercules' 
AND last_name LIKE 'B%';


-- 6) List each employee in the Sales department, 
	--including their employee number, last name, and first name. (SUBQUERY**)
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name