CREATE TABLE departments (
	dept_no VARCHAR (10) NOT null,
	dept_name VARCHAR (20) NOT NULL,
	PRIMARY KEY(dept_no)
);
CREATE TABLE employees (
	emp_no  INT,
	emp_title VARCHAR (5) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR (20) NOT NULL,
	last_name VARCHAR (20) NOT NULL,
	sex VARCHAR (1) NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title) REFERENCES titles(title_id)
);
CREATE TABLE dep_manager (
	dept_no VARCHAR (10) NOT NULL,
	emp_no INT,
	FOREIGN KEY(dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);
CREATE TABLE dept_emp (
	emp_no INT,
	dept_no VARCHAR (10) NOT NULL,
	FOREIGN KEY(dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE salaries (
	emp_no  INT,
	salary INT,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE titles (
	title_id VARCHAR (5) NOT NULL,
	title VARCHAR (20) NOT NULL,
	PRIMARY KEY(title_id)
);


