-- Module 7 challenge
-- Use Dictinct with Orderby to remove duplicate rows
SELECT e.emp_no,
		e.first_name,
		e.last_name,
		ti.title,
		ti.from_date,
		ti.to_date
INTO retirement_titles
FROM employees AS e
	INNER JOIN titles AS ti
		ON (e.emp_no = ti.emp_no)
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
-- 	AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31')
ORDER BY e.emp_no;

SELECT * FROM retirement_titles;
-- DROP TABLE retirement_titles;

-- #9 Retrieve employee number
SELECT rt.emp_no,
		rt.first_name,
		rt.last_name,
		rt.title
INTO unique_titles;
FROM retirement_titles;

SELECT * FROM unique_titles;
DROP TABLE retirement_titles;


SELECT 
		DISTINCT ON (emp_no) emp_no,
			first_name,
			last_name,
			title,
			to_date
INTO unique_titles
FROM retirement_titles
WHERE to_date >= '9999-01-01'
ORDER BY emp_no, to_date DESC;

SELECT * FROM unique_titles;
SELECT * FROM retirement_depts;

-- #16 Employee count by department number
SELECT COUNT(ut.title), ut.title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY ut.title
ORDER BY ut.title;

SELECT * FROM retiring_titles


-- Deliverable #2 The Employees Eligible for the Mentorship Program
SELECT 
		DISTINCT ON (emp_no)
					 	e.emp_no,
						e.first_name,
						e.last_name,
						e.birth_date,
						dept_emp.from_date,
						dept_emp.to_date,
						ti.title
INTO mentorship_eligibility
FROM employees as e
INNER JOIN dept_emp
	ON (e.emp_no = dept_emp.emp_no)
INNER JOIN titles as ti
	ON (e.emp_no = ti.emp_no)
WHERE (dept_emp.to_date = '9999-01-01')
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;

SELECT * FROM mentorship_eligibility;

