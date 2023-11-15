/* JOINS

--it is used to fetch records from multiple tables
--if i want to join two diff table, first we have to find the business related column in this two tables
--not mandatory to have same column name, but datatype should be same

-- We use two tables employees, department tables
*/

select * from employees;
select * from departments;

--INNER JOIN 
--it will fect only matched records from both the table 

select first_name, department_name from employees e, departments d where e.department_id =d.department_id;

--LEFT OUTER JOIN
--it will fetch both mathced and un-matched records in left table and only matched records in right table

select e.employee_id, e.first_name, d.department_name
from employees e
left outer join
departments d
on
e.department_id = d.department_id;

-- RIGHT OUTER JOIN
--it will fetch both matched and un matched records in right table and only matched records in left table
select e.employee_id, e.first_name, d.department_name
from employees e
right outer join
departments d
on
e.department_id = d.department_id;

--FULL OUTER JOIN
--it will fetch both matched and un matched records in both the table
--we can use only ansi method

select e.employee_id, e.first_name, d.department_name
from employees e
full outer join
departments d
on
e.department_id = d.department_id;


--CROSS JOIN
--if we missed to mention join condition then it will take cross join, it will multiple tow table records

select first_name, department_name from employees e, departments d;

COMMIT;






