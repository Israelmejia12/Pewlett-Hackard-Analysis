-- Joining retirement_info and dept_emp tables
SELECT ri.emp_no,
    ri.first_name,
ri.last_name,
    de.to_date
FROM retirement_info as ri
LEFT JOIN dept_emp as de
ON ri.emp_no = de.emp_no;

SELECT d.dept_name,
     dm.emp_no,
     dm.from_date,
     dm.to_date
	 FROM departments as d
INNER JOIN dept_manager as dm
ON d.dept_no = dm.dept_no;


SELECT ri.emp_no,
    ri.first_name,
    ri.last_name,
de.to_date
INTO current_emp
FROM retirement_info as ri
Left JOIN dept_emp as de
ON ri.emp_no = de.emp_no
WHERE de.to_date = ('1999-01-01');

-- Employee count by department number
SELECT COUNT(ce.emp_no), de.dept_no
FROM current_emp as ce
LEFT JOIN dept_emp as de
ON ce.emp_no = de.emp_no
GROUP BY de.dept_no
ORDER BY de.dept_no;

select * from dept_emp where to_date = ('9999-01-01');

SELECT * FROM salaries
ORDER BY to_date DESC;

SELECT emp_no, first_name, last_name,gender
INTO retirement_info
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

Into Emp_Info
from employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

SELECT emp_no, first_name, last_name,gender
INTO emp_info
FROM employees as e
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

-- List of managers per department
SELECT  dm.dept_no,
        d.dept_name,
        dm.emp_no,
        ce.last_name,
        ce.first_name,
        dm.from_date,
        dm.to_date
INTO manager_info
FROM dept_manager AS dm
    INNER JOIN departments AS d
        ON (dm.dept_no = d.dept_no)
    INNER JOIN current_emp AS ce
        ON (dm.emp_no = ce.emp_no);

SELECT ce.emp_no,
ce.first_name,
ce.last_name,
d.dept_name
--INTO dept_info
FROM current_emp as ce
INNER JOIN dept_emp AS de
ON (ce.emp_no = de.emp_no)
INNER JOIN departments AS d
ON (de.dept_no = d.dept_no);

SELECT ce.emp_no,
ce.first_name,
ce.last_name,
d.dept_name
--INTO dept_info
FROM current_emp as ce
INNER JOIN dept_emp AS de
ON (ce.emp_no = de.emp_no)
INNER JOIN departments AS d
ON (de.dept_no = d.dept_no)
Where dept_name = 'Sales';

SELECT ce.emp_no,
ce.first_name,
ce.last_name,
d.dept_name
--INTO dept_info
FROM current_emp as ce
INNER JOIN dept_emp AS de
ON (ce.emp_no = de.emp_no)
INNER JOIN departments AS d
ON (de.dept_no = d.dept_no);

select * FROM title


Select emp_info.emp_no,
emp_info.first_name,
emp_info.last_name,
titles.title,
titles.from_date,
titles.to_date
Into Emp_title
FROM emp_info
Inner Join titles 
ON emp_info.emp_no = titles.emp_no;

Select * from emp_title

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (Emp_no)emp_no,
first_name,
last_name,
title
INTO Employee_Database
FROM Emp_title 
WHERE to_date = '9999-01-01'
ORDER BY emp_no, to_date DESC;

SELECT COUNT(Employee_Database.Emp_no),Employee_Database.title
INTO Emp_retire
FROM Employee_Database
GROUP BY title
ORDER BY COUNT DESC;

select * from Emp_retire