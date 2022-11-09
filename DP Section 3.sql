3-1 Vocab
NOT
AND
Precedence Rules
OR

3-1 Try Its
2.
SELECT last_name 
FROM employees
WHERE last_name LIKE '%e%' AND last_name LIKE '%i%';
3.
SELECT * 
FROM F_STAFFS
WHERE salary > 6.50 AND staff_type NOT IN ('Order Taker');
4.
SELECT last_name
FROM employees
WHERE last_name LIKE 'D%' AND last_name LIKE '%a%' AND last_name LIKE '%e%';
5.
SELECT loc_type
FROM d_venues
WHERE loc_type NOT IN 'Private Home';
6.
C.
7.
SELECT *
FROM employees
WHERE hire_date > '31-May-1998' 
AND hire_date < '01-Jun-1999' AND salary < 8000 and last_name LIKE '%en%';
8.
SELECT email
FROM employees
WHERE hire_date > '01-Jan-1996' AND salary > 9000 AND commission_pct IS NULL;

3-2 Vocab
ASCENDING
DESCENDING
ORDER BY

3-2 Try Its
1.
SELECT employee_id AS "Number", first_name, last_name
FROM employees
ORDER BY "Number";
2.
SELECT title, year
FROM d_cds
ORDER BY title;
3.
SELECT title AS "Our Collection"
FROM d_songs
ORDER BY title DESC;

3-3 Try Its
1.
a. Single Row
b. Multiple Row
c. Single Row
d. Single Row
e. Single Row
f. Single Row
2.
AVG gives the average of the given numbers
COUNT gives the number of rows in the given table
MAX give the highest value of the given table
MIN gives the lowest value of the given table
SUM give the value of all the values added together of the given table