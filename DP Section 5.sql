5-1 Vocab
CHAR
fm
Conversion Function
NUMBER
VARCHAR2
DATE
TO_CHAR
RR date format
TO_NUMBER
DD date format
TO_DATE

5-1 Try Its
1.
SELECT last_name, TO_CHAR(birthdate, 'Month fmDD, YYYY')
FROM f_staffs;
4.
SELECT TO_CHAR(SYSDATE, ' "Today is the " Ddspth "of" Month, Year')
FROM dual;
6.
SELECT first_name, last_name, TO_CHAR(salary, '$99,999.99'), TO_CHAR(salary + 2000, '$99,999.99') AS "New Salary"
FROM employees
WHERE first_name = 'Ellen';
10.
SELECT TO_DATE('JUNE192004', 'fxMonthDDYYYY')
FROM dual;

5-2 Vocab
NVL
COALESCE
NVL2
NULLIF
5-2 Try Its
1.
SELECT name, start_date, NVL2(end_date, 'ends in two weeks', SYSDATE)
FROM F_PROMOTIONAL_MENUS;
2.
SELECT last_name, NVL(overtime_rate, 0) AS "Overtime Status"
FROM f_staffs;
5.
c.
8.
SELECT first_name, last_name, NVL(specialty, 'No Specialty')
FROM d_partners;

5-3 Voacb
DECODE
Conditional expression
CASE
5-3 Try It 
2.
SELECT last_name, department_id, salary, 
CASE department_id
WHEN 10 THEN 1.25 * salary
WHEN 90 THEN 1.5 * salary
WHEN 130 THEN 1.75 * salary
ELSE salary
END AS "New Salary"
FROM employees;