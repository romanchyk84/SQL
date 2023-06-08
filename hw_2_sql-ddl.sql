-- Удаление таблиц, если они уже существуют
drop table if exists roles_employee;
drop table if exists employees;
drop table if exists salary;
drop table if exists employee_salary;
drop table if exists roles;

-- Создание таблицы Employees
create table employees(
	id serial primary key,
	employee_name varchar(50) not null
	);

-- Заполнение таблицы Employees
insert into employees (employee_name)
	values ('Roman'),
		('Ivan'),
		('Petro'),
		('Vasyl'),
		('Nikolai'),
		('Stepan'),
		('Fedor'),
		('Oleg'),
		('Fedot'),
		('Kompot'),
		('Vasyan'),
		('Ivan'),
		('Petro'),
		('Vasyl'),
		('Nikolai'),
		('Stepan'),
		('Fedor'),
		('Oleg'),
		('Fedot'),
		('Kompot'),
		('Vasyan'),
		('Ivan'),
		('Petro'),
		('Vasyl'),
		('Nikolai'),
		('Stepan'),
		('Fedor'),
		('Oleg'),
		('Fedot'),
		('Kompot'),
		('Roman'),
		('Ivan'),
		('Petro'),
		('Vasyl'),
		('Nikolai'),
		('Stepan'),
		('Fedor'),
		('Oleg'),
		('Fedot'),
		('Kompot'),
		('Vasyan'),
		('Ivan'),
		('Petro'),
		('Vasyl'),
		('Nikolai'),
		('Stepan'),
		('Fedor'),
		('Oleg'),
		('Fedot'),
		('Kompot'),
		('Vasyan'),
		('Ivan'),
		('Petro'),
		('Vasyl'),
		('Nikolai'),
		('Stepan'),
		('Fedor'),
		('Oleg'),
		('Fedot'),
		('Kompot'),
		('Ivan'),
		('Petro'),
		('Vasyl'),
		('Nikolai'),
		('Stepan'),
		('Fedor'),
		('Oleg'),
		('Fedot'),
		('Kompot'),
		('Vasyan');


-- Создание таблицы Salary
create table salary(
	id serial primary key,
	monthly_salary int not null
	);

-- Заполнение таблицы Salary 16-ю строками
insert into salary (monthly_salary)
	values (1000),
		(1100),
		(1200),
		(1300),
		(1400),
		(1500),
		(1600),
		(1700),
		(1800),
		(1900),
		(2000),
		(2100),
		(2200),
		(2300),
		(2400),
		(2500);

-- Создание таблицы Employees Salary
create table employee_salary(
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
	);

-- Заполение таблицы Employee Salary
insert into employee_salary (employee_id, salary_id)
	values (1, 1),
		(2, 2),
		(3, 5),
		(4, 7),
		(5, 8),
		(6, 6),
		(7, 3),
		(8, 4),
		(9, 9),
		(10, 1),
		(11, 12),
		(12, 10),
		(13, 14),
		(14, 8),
		(15, 2),
		(16, 11),
		(17, 4),
		(18, 6),
		(19, 1),
		(20, 9),
		(21, 2),
		(22, 7),
		(23, 8),
		(24, 9),
		(25, 1),
		(26, 2),
		(27, 9),
		(28, 15),
		(29, 12),
		(30, 2),
		(901, 14),
		(902, 8),
		(903, 9),
		(904, 10),
		(905, 4),
		(906, 6),
		(907, 1),
		(908, 11),
		(909, 16),
		(910, 13);
	

-- Создание таблицы roles 
create table roles(
	id serial primary key,
	role_name int not null unique
	);

-- Изменение типа данных столбца role_name с INT на VARCHAR	
alter table roles
	alter column role_name type varchar(30);

-- Проверка изменения типа данных в столбце
select column_name, data_type, character_maximum_length from information_schema.columns
	where table_name = 'roles';

-- Наполнение таблицы Roles
insert into roles(role_name)
	values ('Junior Python developer'),
			('Middle Python developer'),
			('Senior Python developer'),
			('Junior Java developer'),
			('Middle Java developer'),
			('Senior Java developer'),
			('Junior JavaScript developer'),
			('Middle JavaScript developer'),
			('Senior JavaScript developer'),
			('Junior Manual QA engineer'),
			('Middle Manual QA engineer'),
			('Senior Manual QA engineer'),
			('Project Manager'),
			('Designer'),
			('HR'),
			('CEO'),
			('Sales manager'),
			('Junior Automation QA engineer'),
			('Middle Automation QA engineer'),
			('Senior Automation QA engineer');
			

-- Создание таблицы Roles_employee
create table roles_employee(
	id serial  primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key(id) references employees(id),
	foreign key(role_id) references roles(id)
	);
	
insert into roles_employee (employee_id, role_id)
	values (1, 1),
		(2, 2),
		(3, 5),
		(4, 7),
		(5, 8),
		(6, 6),
		(7, 3),
		(8, 4),
		(9, 9),
		(10, 1),
		(11, 12),
		(12, 10),
		(13, 14),
		(14, 8),
		(15, 2),
		(16, 11),
		(17, 4),
		(18, 6),
		(19, 20),
		(20, 19),
		(21, 2),
		(22, 7),
		(23, 8),
		(24, 9),
		(25, 1),
		(26, 2),
		(27, 9),
		(28, 17),
		(29, 12),
		(30, 2),
		(39, 14),
		(31, 8),
		(37, 9),
		(33, 18),
		(40, 4),
		(35, 6),
		(38, 1),
		(32, 11),
		(36, 16),
		(34, 13);
