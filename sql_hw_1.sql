 --1. Вывести все поля и все строки
	select * from table_name;
    
 --2. Вывести всех студентов в таблице
	select students from table_name;
    
 --3. Вывести только Id пользователей
	select user_id from table_name;
    
 --4. Вывести только имя пользователей
	select user_name from table_name;
    
 --5. Вывести только email пользователей
	select user_email from table_name;
    
 --6. Вывести имя и email пользователей
	select user_name, user_email from table_name;
    
 --7. Вывести id, имя, email и дату создания пользователей
	select user_id, user_name, user_email, user_creatdate from table_name;
    
 --8. Вывести пользователей где password 12333
	select user_name from table_name
        where password = 12333;
    
 --9. Вывести пользователей которые были созданы 2021-03-26 00:00:00
	select user_name from table_name
        where user_creatdate = '2021-03-26 00:00:00';
    
 --10. Вывести пользователей где в имени есть слово Анна
	select * from table_name
        where user_name = '????';
    
 --11. Вывести пользователей где в имени в конце есть 8
	select * from table_name
        where user_name like '%8';
    
 --12. Вывести пользователей где в имени в есть буква а
	select * from table_name
        where user_name like '%a%';
    
 --13. Вывести пользователей которые были созданы 2021-07-12 00:00:00
	select * from table_name
        where user_creatdate = '2021-07-12 00:00:00';
    
 --14. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и имеют пароль 1m313
	select * from table_name
        where user_creatdate = '2021-07-12 00:00:00' and password = '1m313';
        
 --15. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть слово Andrey
	select * from table_name
        where user_creatdate = '2021-07-12 00:00:00' and user_name = 'Andrey';
    
 --16. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть цифра 8
	select * from table_name
        where user_creatdate = '2021-07-12 00:00:00' and user_name like '%8%';
    
 --17. Вывести пользователя у которых id равен 110
 	select * from table_name
        where user_id = 110;
    
 --18. Вывести пользователя у которых id равен 153
 	select * from table_name
        where user_id = 153;
    
 --19. Вывести пользователя у которых id больше 140
 	select * from table_name
        where user_id > 140;
    
 --20. Вывести пользователя у которых id меньше 130
 	select * from table_name
        where user_id < 130;
    
 --21. Вывести пользователя у которых id меньше 127 или больше 188
 	select * from table_name
        where user_id not between 127 and 188;
    
 --22. Вывести пользователя у которых id меньше либо равно 137
 	select * from table_name
        where user_id <= 137;
    
 --23. Вывести пользователя у которых id больше либо равно 137
	select * from table_name
        where user_id >= 137;
    
 --24. Вывести пользователя у которых id больше 180 но меньше 190
	select * from table_name
        where user_id > 180 and user_id < 190;
    
 --25. Вывести пользователя у которых id между 180 и 190
	select * from table_name
        where user_id between 180 and 190;
    
 --26. Вывести пользователей где password равен 12333, 1m313, 123313
	select * from table_name
        where password in ('12333','1m313','123313');
    
 --27. Вывести пользователей где created_on равен 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00
	select * from table_name
        where created_on in ('2020-10-03 00:00:00', '2021-05-19 00:00:00', '2021-03-26 00:00:00');
    
 --28. Вывести минимальный id 
	select min(user_id) from table_name;
    
 --29. Вывести максимальный.
	select max(user_id) from table_name;
    
 --30. Вывести количество пользователей
	select count(user_name) from table_name;
    
 --31. Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку возрастания даты добавления пользоватлеля.
 	select user_id, user_name, user_creatdate from table_name
        order by user_creatdate ASC;
    
 --32. Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку убывания даты добавления пользоватлеля.
 	select user_id, user_name, user_creatdate from table_name
        order by user_creatdate DESC;
