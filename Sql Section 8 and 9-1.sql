Vocab 8-1
AVG
COUNT
SSTDDEV
Group Function
MIN
VARIANCE
SUM
MAX
Aggregate

Try Its 8-1
2.
SELECT ROUND(AVG(COST), 2)
FROM d_events;
3.
SELECT AVG(salary)
FROM f_staffs
WHERE manager_id = 19;
4.
SELECT SUM(salary)
FROM f_staffs
WHERE id IN(12, 9);
9.
SELECT AVG(order_total)
FROM f_orders
WHERE ORDER_DATE BETWEEN '01-Jan-2002' AND '21-Dec-2002';
10.
SELECT MAX(hire_date)
FROM employees;

Vocab 8-2
COUNT(expression)
DISTINCT
COUNT(DISTINCT expression)

Try Its 8-2
1.
SELECT COUNT(title)
FROM d_songs;
2.
SELECT COUNT(DISTINCT loc_type)
FROM d_venues;
3.
SELECT COUNT(song_id), COUNT(DISTINCT cd_number)
FROM d_track_listings;
4.
SELECT COUNT(email)
FROM d_clients; 
5.
SELECT COUNT(auth_expense_amt)
FROM d_partners;
7.
SELECT ROUND(AVG(NVL(auth_expense_amt, 100000)), 2)
FROM d_partners;

Vocab 9-1
HAVING
GROUP by

Try It 9-1
1.
a, c, d, 
2.
a SELECT manager_id
FROM employees
HAVING AVG(salary) <16000
GROUP BY manager_id;

b SELECT cd_number, COUNT(title)
FROM d_cds
WHERE cd_number < 93
GROUP BY cd_number;

c SELECT ID, MAX(ID), artist AS Artist
FROM d_songs
WHERE duration IN('3 min', '6 min', '10 min')
HAVING ID < 50
GROUP By ID, artist;

d SELECT loc_type, rental_fee AS Fee
FROM d_venues
WHERE id <100
ORDER BY 2;

3.
SELECT MAX(DISTINCT song_id)
FROM d_track_listings
WHERE track IN ( 1, 2, 3);
4.
T
F
F
5.
SELECT MAX(AVG (salary)), MIN(AVG (salary))
FROM employees
GROUP BY department_id;
6.
SELECT MAX(AVG (salary)), MIN(AVG (salary))
FROM employees
GROUP BY department_id;

