select * from employees ;
select * from salary ;
select * from employee_salary ;
select * from roles ;
select * from roles_employee ;

-- Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
select e.id, e.employee_name , s.monthly_salary  from employees e join employee_salary es on (e.id = es.employee_id) join salary s on (es.salary_id = s.id) ;

-- Вывести всех работников у которых ЗП меньше 2000.
select e.id, e.employee_name , s.monthly_salary  from employees e join employee_salary es on (e.id = es.employee_id) join salary s on (es.salary_id = s.id) where monthly_salary < 2000 ;

