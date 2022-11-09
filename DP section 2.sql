Vocab 2-1
DISTINCT
Concatenation Operator
Literal Value
DESCRIBE

Try-its

1. SELECT last_name, address
FROM F_customers;

2. 
a SELECT first_name
FROM f_staffs;
b  SELECT first_name ||' '|| last_name AS "DJs on Demand Clients"
FROM d_clients;
c SELECT DISTINCT f_order_lines
FROM quantity;
d SELECT order_number
FROM f_orders;

5.
SELECT last_name AS "EMPLOYEE LAST NAME", salary AS "CURRENT SALARY", (salary * 1.05)
AS "SALARY WITH 5% RAISE"
FROM f_staffs;
6.
SELECT *
FROM employees;
Commission, bonus, and department_id are nullable
nullable means that the value can be unknown or unassigned

12.
b.
13.
b.
14.
c.
15.
b.
16.
a.
17.
a.

Vocab 2-2
WHERE clause
Comparison operators

Try-its 1-6
1.
SELECT first_name, last_name, address
FROM f_customers
WHERE id = 456;
2.
SELECT name, start_date, end_date
FROM f_promotional_menus
WHERE give_away = 'ballpen and highlighter';
3.
SELECT ' The 1997 recording in our database is '|| title AS "Oldest" 
FROM d_cds
WHERE title = 'The Celebrants Live in Concert';
4.
SELECT producer, title
FROM d_cds
WHERE title = 'carpe diem';
5.
SELECT title, year
from d_cds
WHERE year < 2000;
6.
b.

Vocab 2-3
ESCAPE
IS NULL, IS NOT NULL
BETWEEN...AND
INCLUSIVE
LIKE
IN
Try-its 1-8
1.
SELECT first_name, last_name, salary
FROM f_staffs
WHERE salary BETWEEN 5 AND 10;
2.
SELECT loc_type, comments
FROM d_venues
WHERE loc_type = 'Private Home';
3.
SELECT first_name, last_name
FROM f_staffs
WHERE salary >= 20.00 and salary <=60.00;
4.
SELECT title
FROM d_cds
WHERE title LIKE '_a%';
5.
SELECT first_name, auth_expense_amt
FROM d_partners
WHERE auth_expense_amt IS NULL;
6.
SELECT last_name
FROM employees
WHERE last_name LIKE '%s';
7.
b. and c. 
8.
SELECT type_code
FROM d_songs
WHERE type_code IN(77,12,1)