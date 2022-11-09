4-1 Vocab
DUAL
Format
INITCAP
Character Functions
TRIM
Expression
Single-row functions
UPPER
Input
CONCAT
Output
LOWER
LPAD
SUBSTR
REPLACE
INSTR
LENGTH
RPAD

4-1 Try Its
1.
SELECT 'Oracle '||'Internet '||'Academy' AS "The Best Class"
FROM DUAL;
2.
SELECT REPLACE('Oracle Internet Academy', 'Oracle Internet Academy', 'net') AS "The Net"
FROM DUAL;
3.
SELECT LENGTH ('Oracle Internet Academy')
FROM DUAL;
4.
SELECT INSTR ('Oracle Internet Academy', 'I')
FROM DUAL;
5.
SELECT LPAD ('Oracle', 10, '*') || LPAD ('Internet', 12, '*') || LPAD ('Academ', 11, '*') || RPAD ('y', 5, '*')
FROM DUAL;
6.
SELECT RPAD ('Oracle', 9, '$') || RPAD ('Internet', 11, '$') || LPAD ('Academy', 7, '$')
FROM DUAL;
7.
SELECT REPLACE('Oracle Internet Academy', 'Oracle Internet Academy', 'Oracle 2013-2014 Academy') AS "The Best Class"
FROM DUAL;
8.
SELECT LPAD (order_total, '7', '$') AS "TOTAL" 
FROM f_orders;

4-2 Vocab
TRUNC
Number functions
MOD
ROUND
4-2 Try Its
1. SELECT last_name, salary, employee_id, ROUND(salary/1.55,2)
FROM employees
WHERE employee_id BETWEEN 100 AND 102;

2.SELECT last_name, TRUNC(salary*5.333,2), department_id
FROM employees
WHERE department_id = 80;

3.SELECT MOD(38873,2)
FROM dual;

4.SELECT ROUND(845.553,1)
FROM dual;

SELECT ROUND(30695.348,2)
FROM dual;

SELECT ROUND(30695.348,-2)
FROM dual;

SELECT TRUNC(2.3454, 1)
FROM dual;
5.
SELECT last_name, salary/3 
FROM employees
WHERE salary/3 = 8000 OR salary/3 = 4000 OR salary/3 = 3500 OR salary/3 = 3000 
OR salary/3 = 2000 OR salary/3 = 1400 OR salary/3 = 2000;
6.
SELECT MOD(34,8)
FROM dual;
7.
Rounded because truncated would make the check worth less than rounded. 
Yes, because it builds up overtime.

4-3 Vocab
SYSDATE
ADD_MONTHS
LAST_DAY
NEXT_DAY
MONTHS_BETWEEN

4-3 Try Its
1.
SELECT event_date, SYSDATE,
ROUND (MONTHS_BETWEEN (SYSDATE, event_date))
FROM d_events
WHERE name = 'Vigil wedding';
3.
SELECT ROUND(MONTHS_BETWEEN('01-Jan-2018', '31-Dec-2018') * 30.5)
FROM dual;
4.
SELECT ROUND(TRUNC(SYSDATE, 'Month')) AS "Month", ROUND(TRUNC(SYSDATE, 'Year')) AS "Year"
FROM dual;
5.
SELECT LAST_DAY ('01-Jun-2005') AS "End of month"
FROM dual;
6.
SELECT birthdate, SYSDATE,
ROUND (MONTHS_BETWEEN (SYSDATE, birthdate)/12) AS "Years between"
FROM f_staffs
WHERE last_name = 'Miller';
7.
SELECT ADD_MONTHS (SYSDATE, 6)
AS "Appointment"
FROM dual;
Apr 30 2019
8.
SELECT LAST_DAY (SYSDATE)
AS "Deadline"
FROM dual;
31 Oct 2018
9.
SELECT MONTHS_BETWEEN('04-Mar-2018', '01-Jan-2019') AS "Months between"
FROM dual;
11.
MONTHS_BETWEEN
12.
ADD_MONTHS