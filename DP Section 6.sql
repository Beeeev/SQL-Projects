Vocab 6-1
Cross Join
Natural Join

Try Its 6-1
1.
SELECT last_name, department_name
FROM employees CROSS JOIN departments;
2.
employees table has 20 rows and the departments table has 8 rows, so it returns 160 rows.
3.
SELECT location_id, department_id, department_name, city
FROM departments NATURAL JOIN locations;
4.
SELECT location_id, department_id, department_name, city
FROM departments NATURAL JOIN locations
WHERE department_id > 19 AND department_id < 51;

Vocab 6-2
ON
USING
Try Its 6-2
1.
SELECT location_id
FROM locations JOIN departments USING (location_id)
WHERE location_id = 1400;
3.
SELECT city, department_name, department_id
FROM departments d JOIN locations l
ON (d.location_id = l.location_id)
WHERE department_id BETWEEN 10 AND 30;
5.
SELECT first_name, last_name, hire_date, job_id, job_title, max_salary
FROM employees JOIN jobs USING (job_id)
WHERE salary > 12000;

Vocab 6-3
FULL OUTER JOIN
Outer Join
LEFT OUTER JOIN
RIGHT OUTER JOIN
Inner Join

Try Its 6-3
1.
SELECT e.first_name, e.last_name, d.department_name
FROM employees e
LEFT OUTER JOIN departments d ON (e.department_id = d.department_id);
2.
SELECT e.first_name, e.last_name, d.department_name
FROM employees e
RIGHT OUTER JOIN departments d ON (e.department_id = d.department_id);
3.
SELECT e.first_name, e.last_name, d.department_name
FROM employees e
FULL OUTER JOIN departments d ON (e.department_id = d.department_id);

Vocab 6-4
SELF-JOIN
Hierarchical queries
Level
Start With
Connect by

Try Its 6-4
1.
SELECT worker.last_name AS "Employee", worker.employee_id AS "Emp#",
 manager.last_name AS "Manager", manager.manager_id AS "Mgr#"
FROM employees worker JOIN employees manager
ON (worker.manager_id = manager.employee_id);
  
2.
SELECT last_name AS "Employee", employee_id AS "Emp#",
 last_name AS "Manager", manager_id AS "Mgr#"
FROM employees
START WITH employee_id = 100
CONNECT BY PRIOR employee_id = manager_id
ORDER BY last_name;

