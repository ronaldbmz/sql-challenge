-- Table: public.employees
DROP TABLE public.employees;
CREATE TABLE public.employees
(
    emp_no integer NOT NULL PRIMARY KEY,
    emp_title_id varchar(10),
	birth_date date,
	first_name varchar(20),
	last_name varchar(20),
	sex char(1),
	hire_date date
);

-- Table: public.departments
DROP TABLE public.departments;
CREATE TABLE public.departments
(
    dept_no varchar(20) NOT NULL PRIMARY KEY,
    dept_name varchar(20)
);

-- Table: public.dept_emp
DROP TABLE public.dept_emp;
CREATE TABLE public.dept_emp
(
    emp_no integer NOT NULL,
	dept_no varchar(20) NOT NULL,
	FOREIGN KEY (emp_no)
      REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no)
      REFERENCES departments (dept_no)
	
);

-- Table: public.managers
DROP TABLE public.managers;
CREATE TABLE public.managers
(
    dept_no varchar(20) NOT NULL,
	emp_no integer NOT NULL,
	FOREIGN KEY (emp_no)
      REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no)
      REFERENCES departments (dept_no)
	
);

-- Table: public.salaries
DROP TABLE public.salaries;
CREATE TABLE public.salaries
(
    emp_no integer NOT NULL,
	salaries integer,
	FOREIGN KEY (emp_no)
      REFERENCES employees (emp_no)
	
);

-- Table: public.titles
DROP TABLE public.titles;
CREATE TABLE public.titles
(
    title_id varchar(10) NOT NULL,
	title varchar(20)
	
);