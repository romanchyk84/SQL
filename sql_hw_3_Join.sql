select * from employees ;
select * from salary ;
select * from employee_salary ;
select * from roles ;
select * from roles_employee ;

-- Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
select e.id, e.employee_name , s.monthly_salary  from employees e join employee_salary es on (e.id = es.employee_id) join salary s on (es.salary_id = s.id) ;

-- Вывести всех работников у которых ЗП меньше 2000.
select e.id, e.employee_name , s.monthly_salary  from employees e join employee_salary es on (e.id = es.employee_id) join salary s on (es.salary_id = s.id) where monthly_salary < 2000 ;

-- Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.) ????
select es.employee_id , monthly_salary  from employee_salary es join salary s on (es.salary_id = s.id) where es.employee_id > 900  ;

-- Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select es.employee_id , monthly_salary  from employee_salary es join salary s on (es.salary_id = s.id) where es.employee_id > 900 and s.monthly_salary < 2000 ;

-- Найти всех работников кому не начислена ЗП.
select e.id, e.employee_name , s.monthly_salary  from employee_salary es  join employees e on (employee_id = e.id) join salary s on (es.salary_id = s.id) where monthly_salary = 0 ;

-- Вывести всех работников с названиями их должности.
select e.employee_name "Rabotnik" , r.role_name "Dolzhnost" from roles_employee re join employees e on (re.employee_id = e.id) join roles r on (re.role_id = r.id) ;

-- Вывести имена и должность только Java разработчиков. ????? только Java или еще и JavaScript ???????
select e.employee_name "Rabotnik" , r.role_name "Dolzhnost" from roles_employee re join employees e on (re.employee_id = e.id) join roles r on (re.role_id = r.id) where lower(r.role_name) like '%java %' ;

-- Вывести имена и должность только Python разработчиков.
select * from employees e join roles_employee re on (e.id = re.employee_id) join roles r on (re.role_id = r.id) where lower (role_name) like '%python%' ;

