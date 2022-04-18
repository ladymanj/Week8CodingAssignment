SELECT t.title AS "Title", COUNT(*) AS "# of Employees Born After Jan 1, 1965" FROM employees e
INNER JOIN titles t ON e.emp_no = t.emp_no
WHERE e.birth_date > '1965-01-01'
GROUP BY t.title
ORDER BY t.title;

SELECT t.title AS "Title", AVG(s.salary) AS "Average Salary" FROM salaries s
INNER JOIN titles t
ON s.emp_no = t.emp_no
GROUP BY t.title
ORDER BY t.title;

SELECT d.dept_name AS "Department Name", SUM(s.salary) AS "Total of Salaries" FROM salaries s
INNER JOIN dept_emp de ON s.emp_no = de.emp_no
INNER JOIN departments d ON de.dept_no = d.dept_no
WHERE s.from_date >= '1990-01-01' AND s.to_date <= '1992-12-31'
GROUP BY d.dept_name
HAVING d.dept_name = 'Marketing';