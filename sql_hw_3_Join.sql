select * from employees ;
select * from salary ;
select * from employee_salary ;
select * from roles ;
select * from roles_employee ;

-- Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
select e.id, e.employee_name , s.monthly_salary  from employees e join employee_salary es on (e.id = es.employee_id) join salary s on (es.salary_id = s.id) ;

-- Вывести всех работников у которых ЗП меньше 2000.
select e.id, e.employee_name , s.monthly_salary  from employees e join employee_salary es on (e.id = es.employee_id) join salary s on (es.salary_id = s.id) where monthly_salary < 2000 ;

-- Вывести все зарплатные позиции, но работник по ним не назначен.
select es.employee_id , e.employee_name , s.monthly_salary  from employee_salary es 
join salary s on s.id = es.salary_id 
left join employees e on e.id = es.employee_id 
where e.id is null ;

-- Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select es.employee_id , e.employee_name , s.monthly_salary  from employee_salary es 
join salary s on s.id = es.salary_id 
left join employees e on e.id = es.employee_id 
where e.id is null and s.monthly_salary < 2000 ;

-- Найти всех работников кому не начислена ЗП.
select e.employee_name "Name", es.salary_id "ZP"  from employees e 
left join employee_salary es on ( e.id = es.employee_id  )
where es.salary_id  is null;

-- Вывести всех работников с названиями их должности.
select e.employee_name "Rabotnik" , r.role_name "Dolzhnost" from roles_employee re join employees e on (re.employee_id = e.id) join roles r on (re.role_id = r.id) ;

-- Вывести имена и должность только Java разработчиков. ????? только Java или еще и JavaScript ???????
select e.employee_name "Rabotnik" , r.role_name "Dolzhnost" from roles_employee re join employees e on (re.employee_id = e.id) join roles r on (re.role_id = r.id) where lower(r.role_name) like '%java %' ;

-- Вывести имена и должность только Python разработчиков.
select e.employee_name "Name" , r.role_name "Position" from employees e join roles_employee re on (e.id = re.employee_id) join roles r on (re.role_id = r.id) where lower (role_name) like '%python%' ;

-- Вывести имена и должность всех QA инженеров.
select e.employee_name "Name" , r.role_name "Position" from employees e join roles_employee re on (e.id = re.employee_id) join roles r on (re.role_id = r.id) where lower (role_name) like '%qa%' ;

-- Вывести имена и должность ручных QA инженеров
select e.employee_name "Name" , r.role_name "Position" from employees e join roles_employee re on (e.id = re.employee_id) join roles r on (re.role_id = r.id) where lower (role_name) like '%manual qa%' ;

-- Вывести имена и должность автоматизаторов QA
select e.employee_name "Name" , r.role_name "Position" from employees e join roles_employee re on (e.id = re.employee_id) join roles r on (re.role_id = r.id) where lower (role_name) like '%auto% qa%' ;

-- Вывести имена и зарплаты Junior специалистов
select e.employee_name , s.monthly_salary  from roles_employee re join roles r on (re.role_id = r.id) 
join employees e on (e.id = re.employee_id) 
join employee_salary es on (es.employee_id = re.employee_id)
join salary s on (s.id = es.salary_id)
where role_name like '%Junior%' ;

-- Вывести имена и зарплаты Middle специалистов
select e.employee_name , s.monthly_salary  from roles_employee re join roles r on (re.role_id = r.id) 
join employees e on (e.id = re.employee_id) 
join employee_salary es on (es.employee_id = re.employee_id)
join salary s on (s.id = es.salary_id)
where role_name like '%Middle%' ;

-- Вывести имена и зарплаты Senior специалистов
select e.employee_name , s.monthly_salary  from roles_employee re join roles r on (re.role_id = r.id) 
join employees e on (e.id = re.employee_id) 
join employee_salary es on (es.employee_id = re.employee_id)
join salary s on (s.id = es.salary_id)
where role_name like '%Senior%' ;

-- Вывести зарплаты Java разработчиков  ?????? only Java  not JS  ????
select s.monthly_salary  from roles_employee re join roles r on (re.role_id = r.id) 
join employees e on (e.id = re.employee_id) 
join employee_salary es on (es.employee_id = re.employee_id)
join salary s on (s.id = es.salary_id)
where role_name like '%Java %' ;

--  Вывести зарплаты Python разработчиков
select s.monthly_salary  from roles_employee re join roles r on (re.role_id = r.id) 
join employees e on (e.id = re.employee_id) 
join employee_salary es on (es.employee_id = re.employee_id)
join salary s on (s.id = es.salary_id)
where role_name like '%Python%' ;

-- Вывести имена и зарплаты Junior Python разработчиков
select e.employee_name , s.monthly_salary  from roles_employee re join roles r on (re.role_id = r.id) 
join employees e on (e.id = re.employee_id) 
join employee_salary es on (es.employee_id = re.employee_id)
join salary s on (s.id = es.salary_id)
where lower(role_name) like '%junior python%' ;

-- Вывести имена и зарплаты Middle JS разработчиков
select e.employee_name , s.monthly_salary  from roles_employee re join roles r on (re.role_id = r.id) 
join employees e on (e.id = re.employee_id) 
join employee_salary es on (es.employee_id = re.employee_id)
join salary s on (s.id = es.salary_id)
where lower(role_name) like '%middle javasc%' ;

-- Вывести имена и зарплаты Senior Java разработчиков
select e.employee_name , s.monthly_salary  from roles_employee re join roles r on (re.role_id = r.id) 
join employees e on (e.id = re.employee_id) 
join employee_salary es on (es.employee_id = re.employee_id)
join salary s on (s.id = es.salary_id)
where lower(role_name) like '%senior java %' ;

-- Вывести зарплаты Junior QA инженеров
select  s.monthly_salary   from roles_employee re join roles r on (re.role_id = r.id) 
join employees e on (e.id = re.employee_id) 
join employee_salary es on (es.employee_id = re.employee_id)
join salary s on (s.id = es.salary_id)
where lower(role_name) like '%junior%qa%' ;

-- Вывести среднюю зарплату всех Junior специалистов
select  avg(monthly_salary) "Jun's AVG Salary"  from roles_employee re join roles r on (re.role_id = r.id) 
join employees e on (e.id = re.employee_id) 
join employee_salary es on (es.employee_id = re.employee_id)
join salary s on (s.id = es.salary_id)
where lower(role_name) like '%junior%' ;

-- Вывести сумму зарплат JS разработчиков
select  sum(monthly_salary) "Summa JS salaries"  from roles_employee re join roles r on (re.role_id = r.id) 
join employees e on (e.id = re.employee_id) 
join employee_salary es on (es.employee_id = re.employee_id)
join salary s on (s.id = es.salary_id)
where lower(role_name) like '%javascript%' ;

-- Вывести минимальную ЗП QA инженеров
select  min(monthly_salary) "MIN QA's salaries" from roles_employee re join roles r on (re.role_id = r.id) 
join employees e on (e.id = re.employee_id) 
join employee_salary es on (es.employee_id = re.employee_id)
join salary s on (s.id = es.salary_id)
where lower(role_name) like '%qa%' ;

-- Вывести максимальную ЗП QA инженеров
select  max(monthly_salary) "MIN QA's salaries" from roles_employee re join roles r on (re.role_id = r.id) 
join employees e on (e.id = re.employee_id) 
join employee_salary es on (es.employee_id = re.employee_id)
join salary s on (s.id = es.salary_id)
where lower(role_name) like '%qa%' ;

-- Вывести количество QA инженеров
select count(*) "Kol-vo QA"  from roles_employee re 
join roles r on ( re.role_id = r.id)
where role_name like '%QA%' ; 

-- Вывести количество Middle специалистов
select count(*) from roles_employee re 
join roles r on ( re.role_id = r.id)
where role_name like '%Middle%' ; 

-- Вывести количество разработчиков
select * from roles_employee re 
join roles r on ( re.role_id = r.id)
where role_name like '%developer%' ; 

-- Вывести фонд (сумму) зарплаты разработчиков
select sum(monthly_salary) "Summa ZP Razrabov" from roles_employee re 
join employee_salary es on (re.employee_id = es.employee_id)
join salary s on (es.salary_id = s.id)
join roles r on (re.role_id = r.id)
where role_name like '%developer%' ; 

-- Вывести имена, должности и ЗП всех специалистов по возрастанию
select e.employee_name "Names", role_name "Roles" , s.monthly_salary "Salary"  from roles_employee re join roles r on (re.role_id = r.id) 
join employees e on (e.id = re.employee_id) 
join employee_salary es on (es.employee_id = re.employee_id)
join salary s on (s.id = es.salary_id)
order by e.employee_name  ASC;

-- Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
select e.employee_name "Names", role_name "Roles" , s.monthly_salary "Salary"  from roles_employee re join roles r on (re.role_id = r.id) 
join employees e on (e.id = re.employee_id) 
join employee_salary es on (es.employee_id = re.employee_id)
join salary s on (s.id = es.salary_id)
where s.monthly_salary between 1700 and 2300
order by e.employee_name asc ;

-- Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
select e.employee_name "Names", role_name "Roles" , s.monthly_salary "Salary"  from roles_employee re join roles r on (re.role_id = r.id) 
join employees e on (e.id = re.employee_id) 
join employee_salary es on (es.employee_id = re.employee_id)
join salary s on (s.id = es.salary_id)
where s.monthly_salary < 2200
order by s.monthly_salary  asc ;

-- Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
select e.employee_name "Names", role_name "Roles" , s.monthly_salary "Salary"  from roles_employee re join roles r on (re.role_id = r.id) 
join employees e on (e.id = re.employee_id) 
join employee_salary es on (es.employee_id = re.employee_id)
join salary s on (s.id = es.salary_id)
where s.monthly_salary in (1100, 1500, 2000)
order by e.employee_name  asc ;


