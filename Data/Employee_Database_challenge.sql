-- Creating tables for PH-EmployeeDB
CREATE TABLE departments (
     dept_no VARCHAR(4) NOT NULL,
     dept_name VARCHAR(40) NOT NULL,
     PRIMARY KEY (dept_no),
     UNIQUE (dept_name)
);

CREATE TABLE employees (
     emp_no INT NOT NULL,
     birth_date DATE NOT NULL,
     first_name VARCHAR NOT NULL,
     last_name VARCHAR NOT NULL,
     gender VARCHAR NOT NULL,
     hire_date DATE NOT NULL,
     PRIMARY KEY (emp_no)
);

CREATE TABLE dept_manager (
dept_no VARCHAR(4) NOT NULL,
    emp_no INT NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
    PRIMARY KEY (emp_no, dept_no)
);

CREATE TABLE salaries (
  emp_no INT NOT NULL,
  salary INT NOT NULL,
  from_date DATE NOT NULL,
  to_date DATE NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
  PRIMARY KEY (emp_no)
);

CREATE TABLE department_employees (
	emp_no INT NOT NULL,
	dept_no VARCHAR(4) NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
    PRIMARY KEY (emp_no, dept_no)
);

CREATE TABLE Titles (
  emp_no INT NOT NULL,
  Title Varchar NOT NULL,
  from_date DATE NOT NULL,
  to_date DATE NOT NULL,
  foreign Key (emp_no) References Employees (emp_no),
  Primary key ( emp_no, Title, from_date)
);

SELECT * FROM departments;
SELECT * FROM dept_manager;
SELECT * FROM employees;
SELECT * FROM Titles;
SELECT * FROM department_employees;
SELECT * FROM salaries;


SELECT e.first_name,
e.last_name,
e.emp_no,
t.title,
t.from_date,
t.to_date
INTO Retirement_titles
FROM employees as e
INNER JOIN Titles as t
ON (e.emp_no = t.emp_no)
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no

SELECT * FROM Retirement_titles;
--DROP TABLE Retirement_titles;

SELECT DISTINCT ON (r.emp_no) r.emp_no,
r.first_name,
r.last_name,
r.title
	INTO Unique_titles
	FROM retirement_titles as r
	ORDER BY r.emp_no, r.to_date DESC;

SELECT * FROM Unique_titles;


SELECT count(u.title), u.title
INTO retiring_titles
FROM Unique_titles as u
GROUP BY u.title
order by count(u.title) desc;

SELECT * FROM retiring_titles;

--drop Table retiring_titles;

SELECT DISTINCT ON(e.emp_no) e.emp_no,
e.first_name,
e.last_name,
e.birth_date,
de.from_date,
de.to_date,
t.title
INTO Mentorship 
FROM employees as e
INNER JOIN department_employees as de
	ON (de.emp_no = e.emp_no)
INNER JOIN Titles as t
	ON (t.emp_no = e.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (de.to_date = '9999-01-01')
ORDER BY e.emp_no, de.to_date DESC;



SELECT * FROM Mentorship;

drop Table Mentorship;