select * from employees;
select * from salaries;
select * from dept_manager;
select * from dept_emp;
select * from departments;

--1. employee details
select e.emp_no, e.first_name, e.last_name, e.sex, s.salaries 
	from employees as e
	join salaries as s
	on e.emp_no = s.emp_no;

--2. employees hired in 1986
select e.first_name, e.last_name, e.hire_date
	from employees as e
	where hire_date between '1986-01-01' and '1986-12-31';

--3. manager & dept details
select d.dept_no, d.dept_name, dm.emp_no, e.first_name, e.last_name
	from departments as d
	join dept_manager as dm
	on d.dept_no = dm.dept_no
	join employees as e
	on dm.emp_no = e.emp_no
	
--4. dept and employee info
select e.emp_no, e.last_name, e.first_name, d.dept_name
	from employees as e
	join dept_emp as de
	on e.emp_no = de.emp_no
	join departments as d
	on de.dept_no = d.dept_no

--5. Hercules + B. employees
select e.first_name, e.last_name, e.sex
	from employees as e
	where first_name = 'Hercules' 
	and last_name like 'B%';
	
--6. sales dept employees
select d.dept_name, e.emp_no, e.last_name, e.first_name
	from departments as d 
	join dept_emp as de
	on d.dept_no = de.dept_no
	join employees as e
	on de.emp_no = e.emp_no
	where d.dept_no = 'd007'
	
--7. sales & development employees
select d.dept_name, e.emp_no, e.last_name, e.first_name
	from departments as d 
	join dept_emp as de
	on d.dept_no = de.dept_no
	join employees as e
	on de.emp_no = e.emp_no
	where d.dept_no = 'd007' or d.dept_no = 'd005'

--8. descending count of last names
select last_name, count(last_name) as "last_name count"
from employees
group by last_name
order by "last_name count" desc;

