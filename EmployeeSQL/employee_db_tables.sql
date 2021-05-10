CREATE TABLE departments (
  	dept_no varchar primary key,
  	dept_name VARCHAR
);

CREATE TABLE titles (
	title_id varchar primary key,
	titles varchar
);


CREATE TABLE employees (
 	emp_no INT primary key,
 	emp_title_id VARCHAR,
 	birth_date date,
 	first_name varchar,
 	last_name varchar,
 	sex char(1),
	hire_date date,
	foreign key (emp_title_id) references titles(title_id)
);


CREATE TABLE dept_emp (
	emp_no INT,
  	dept_no VARCHAR,
	foreign key (emp_no) references employees(emp_no),
	foreign key (dept_no) references departments(dept_no)
);

CREATE TABLE dept_manager (
	dept_no VARCHAR,
	emp_no INT,
	foreign key (dept_no) references departments(dept_no),
	foreign key (emp_no) references employees(emp_no)
);

CREATE TABLE salaries (
	emp_no int,
	salaries int,
	foreign key (emp_no) references employees(emp_no)
);

