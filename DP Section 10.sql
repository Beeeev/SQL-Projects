10-1 Vocab
Outer Query
Mulitple row subquery
subquery
pair-wise Mulitple Column subquery
Single row subquery
non-pair-wise Mulitple Column subquery
Inner query

10-1 Try its
3.
SELECT song_id
FROM d_play_list_items
WHERE event_id = 
(SELECT event_id
FROM d_play_list_items
WHERE song_id = 45);
4.
SELECT name
FROM d_events
WHERE cost >
(SELECT cost
FROM d_events
WHERE id = 100);
5.
SELECT track
FROM d_track_listings
WHERE cd_number = 
(SELECT cd_number
FROM d_cds
WHERE cd_number = 91);
6.
SELECT name
FROM d_events
WHERE theme_code =
(SELECT code
FROM d_themes
WHERE description ='Tropical');
7.
SELECT first_name
FROM f_staffs
WHERE salary >
(SELECT salary
FROM f_staffs
WHERE id = 12);

10-2 Try its
1.
SELECT *
FROM employees
WHERE salary > 
(SELECT salary
FROM employees
WHERE last_name LIKE 'Lorentz')
AND department_id =
(SELECT department_id
FROM employees
WHERE last_name LIKE 'Abel'); 
2.
SELECT first_name
FROM employees
WHERE job_id = 
(SELECT job_id
FROM employees
WHERE last_name = 'Rajs')
AND hire_date > 
(SELECT hire_date 
FROM employees
WHERE last_name = 'Davies');
5.
SELECT department_id, AVG(salary)
FROM employees
HAVING AVG(salary) >
(SELECT salary
FROM employees
WHERE last_name LIKE 'Ernst')
GROUP BY department_id;

10-3 Try its
2.
SELECT id, title, duration, artist
FROM d_songs
WHERE type_code IN
(SELECT code 
FROM d_types
WHERE code IN (1, 12));
3.
SELECT last_name 
FROM employees
WHERE salary = ANY
(SELECT MIN(salary)
FROM employees);
7.
SELECT department_id, MIN(salary)
FROM employees
GROUP BY department_id
HAVING MIN(salary) < ANY
(SELECT MIN(salary)
FROM employees
WHERE department_id IN (50))
ORDER BY department_id;

10-4 Try its
1.
A correlated subquery is evaluated once 
for each row processed by the parent statement.
With a normal subquery, the inner SELECT query runs first and 
executes once, returning values to be used by the outer query. 
2.
SELECT o.last_name, o.department_id, o.salary
FROM employees o
WHERE o.salary >= 
(SELECT MAX(i.salary)
FROM employees i
WHERE i.department_id = o.department_id);
