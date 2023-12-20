DROP TABLE IF EXISTS departments, titles, salaries, dept_emp, dept_manager, employees;

CREATE TABLE departments (
    dept_no VARCHAR(4) PRIMARY KEY NOT NULL,
    dept_name VARCHAR(30) NOT NULL 
);

CREATE TABLE titles (
    emp_title_id VARCHAR(5) PRIMARY KEY NOT NULL,
    title_name VARCHAR(50) NOT NULL
);


CREATE TABLE salaries (
    emp_no INT PRIMARY KEY,
    salary INT
);

CREATE TABLE dept_emp (
    emp_no INT,
    dept_no VARCHAR(4),
    PRIMARY KEY (emp_no, dept_no),
    FOREIGN KEY (emp_no) REFERENCES salaries(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_manager (
    emp_no INT,
    dept_no VARCHAR(4),
    PRIMARY KEY (emp_no, dept_no),
    FOREIGN KEY (emp_no) REFERENCES salaries(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE employees (
    emp_no INT PRIMARY KEY,
    emp_title_id VARCHAR(5),
    birth_date DATE,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    sex CHAR(1),
    hire_date DATE,
    FOREIGN KEY (emp_title_id) REFERENCES titles(emp_title_id)
);

/Users/oliverking/Repos/sql-challenge/data/employees.csv

COPY departments(dept_no, dept_name) FROM '/path/to/departments.csv' DELIMITER ',' CSV HEADER;



