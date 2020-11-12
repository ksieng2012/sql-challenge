-- 1-List the following details of each employee: 
-- *employee number, *last name, *first name, *sex, and *salary.
-- -- **************         1         ***************
-- SELECT
-- 	emp.emp_no as employee_number
-- 	,emp.last_name
-- 	,emp.first_name
-- 	,emp.sex
-- 	,sal.salary
-- FROM
-- 	employees emp JOIN salaries sal ON emp.emp_no = sal.emp_no
-- ;

-- -- ***************      2        **************
-- -- 2-List first name, last name, and hire date for employees who were hired in 1986.
-- SELECT
-- 	first_name
-- 	,last_name
-- 	,hire_date
-- FROM
-- 	employees
-- WHERE 1=1
-- 	AND hire_date >= '01/01/1986'
-- 	AND hire_date <= '12/31/1986'
-- ;

-- *********************     3      *************************
-- 3- List the manager of each department with the following information: department number, 
-- department name, the manager's employee number, last name, first name.
-- SELECT
-- 	ma.dept_no
-- 	,de.dept_name
-- 	,ma.emp_no
-- 	,emp.last_name
-- 	,emp.first_name
-- FROM
-- 	department_manager ma JOIN departments de ON ma.dept_no = de.dept_no
-- 	JOIN employees emp ON ma.emp_no = emp.emp_no
-- ;

-- *****************      4      ************************
-- List the department of each employee with the following information: 
-- employee number, last name, first name, and department name.

-- SELECT
-- 	emp.emp_no
-- 	,emp.last_name
-- 	,emp.first_name
-- 	,dep.dept_name
-- FROM
-- 	employees emp JOIN dept_emp de ON emp.emp_no = de.emp_no
-- 	JOIN departments dep ON dep.dept_no = de.dept_no
-- ;


-- **************************    5    **********************
-- -- List first name, last name, and sex 
-- -- for employees whose first name is "Hercules" and last names begin with "B."

-- SELECT
-- 	first_name
-- 	,last_name
-- 	,sex
-- FROM
-- 	employees
-- WHERE 1=1
-- 	AND first_name = 'Hercules'
-- ;

-- ************************     6     ***********************
--  List all employees in the Sales department, including their 
--  employee number, last name, first name, and department name.
-- SELECT
-- 	emp.emp_no
-- 	,emp.last_name
-- 	,emp.first_name
-- 	,dep.dept_name
-- FROM
-- 	employees emp JOIN dept_emp dept ON emp.emp_no = dept.emp_no
-- 	JOIN departments dep ON dep.dept_no = dept.dept_no

-- WHERE
-- 	dep.dept_name = 'Sales'
-- ;

-- ************************    7    **************************
-- List all employees in the Sales and Development departments, 
-- including their employee number, last name, first name, and department name.
-- SELECT
-- 	emp.emp_no
-- 	,emp.last_name
-- 	,emp.first_name
-- 	,dep.dept_name
-- FROM
-- 	employees emp JOIN dept_emp dept ON emp.emp_no = dept.emp_no
-- 	JOIN departments dep ON dep.dept_no = dept.dept_no

-- WHERE 1=1
-- 	AND dep.dept_name = 'Sales'
-- 	OR dep.dept_name = 'Development'
-- ;


-- *********************   8   ********************************
-- . In descending order, list the frequency count of employee last names, 
-- i.e., how many employees share each last name.
SELECT 
	last_name
	,COUNT(last_name) AS "frequency_count"
FROM 
	employees
GROUP BY 
	last_name
ORDER BY COUNT(last_name) DESC
;
