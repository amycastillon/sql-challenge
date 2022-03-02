CREATE TABLE titles(
	title_id varchar NOT NULL,
	title varchar,
	primary key (title_id)
);

CREATE TABLE departments(
	dept_no varchar NOT NULL, 
	dept_name varchar,
	primary key (dept_no)
);

CREATE TABLE employees(
	emp_no int,
	emp_title_id varchar,
	birth_date date,
	first_name varchar,
	last_name varchar,
	sex varchar,
	hire_date date,
	primary key (emp_no),
	foreign key (emp_title_id) references titles (title_id)
);

CREATE TABLE salaries(
	emp_no int,
	salary int,
	primary key (emp_no),
	foreign key (emp_no) references employees (emp_no)
);

CREATE TABLE dept_emp(
	emp_no int,
	dept_no varchar,
	foreign key (emp_no) references employees (emp_no),
	foreign key (dept_no) references departments (dept_no)
);

CREATE TABLE dept_manager(
	dept_no varchar,
	emp_no int,
	foreign key (dept_no) references departments (dept_no),
	foreign key (emp_no) references employees (emp_no)
);