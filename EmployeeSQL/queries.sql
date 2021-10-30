--Data Analysis

-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.

select distinct
emp.emp_no,
emp.last_name,
emp.first_name,
emp.sex,
sal.salary

from employees as emp
left join salaries as sal ON emp.emp_no = sal.emp_no
left join titles as ti ON emp.emp_title_id = ti.title_id
left join dept_manager as dm ON emp.emp_no = dm.emp_no
left join dept_emp as de ON emp.emp_no = de.emp_no
left join departments as dep ON de.dept_no = dep.dept_no;



-- 2. List first name, last name, and hire date for employees who were hired in 1986.

select
emp.first_name,
emp.last_name,
emp.hire_date

from employees as emp

where 1=1
and emp.hire_date >= '1986-01-01'
and emp.hire_date < '1987-01-01';



-- 3. List the manager of each department with the following information: department number, 
--    department name, the manager's employee number, last name, first name.

select distinct
dm.dept_no,
dep.dept_name,
dm.emp_no,
emp.last_name,
emp.first_name

from dept_manager as dm
left join employees as emp on dm.emp_no = emp.emp_no
left join departments as dep on dm.dept_no = dep.dept_no

order by dept_no;



-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.
--	  PLEASE NOTE:  Some employees appear twice as they are listed in multiple departments.  (example is employee number 10010)
select distinct
emp.emp_no,
emp.last_name,
emp.first_name,
dep.dept_name

from employees as emp
left join salaries as sal ON emp.emp_no = sal.emp_no
left join titles as ti ON emp.emp_title_id = ti.title_id
left join dept_manager as dm ON emp.emp_no = dm.emp_no
left join dept_emp as de ON emp.emp_no = de.emp_no
left join departments as dep ON de.dept_no = dep.dept_no

order by emp.emp_no;

-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select
emp.first_name,
emp.last_name,
emp.sex

from employees as emp

where 1=1
and emp.first_name in ('Hercules')
and emp.last_name like 'B%';


-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
select distinct
emp.emp_no,
emp.last_name,
dep.dept_name

from employees as emp
left join salaries as sal ON emp.emp_no = sal.emp_no
left join titles as ti ON emp.emp_title_id = ti.title_id
left join dept_manager as dm ON emp.emp_no = dm.emp_no
left join dept_emp as de ON emp.emp_no = de.emp_no
left join departments as dep ON de.dept_no = dep.dept_no

where dep.dept_name in ('Sales');


-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select distinct
emp.emp_no,
emp.last_name,
dep.dept_name

from employees as emp
left join salaries as sal ON emp.emp_no = sal.emp_no
left join titles as ti ON emp.emp_title_id = ti.title_id
left join dept_manager as dm ON emp.emp_no = dm.emp_no
left join dept_emp as de ON emp.emp_no = de.emp_no
left join departments as dep ON de.dept_no = dep.dept_no

where dep.dept_name in ('Sales', 'Development');



-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select
emp.last_name,
count(emp.last_name) as employee_count

from employees as emp

group by 
emp.last_name

order by employee_count desc;