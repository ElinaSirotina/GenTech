
use homework;

create table employees(
employeeid integer primary key auto_increment,
name varchar(100) not null,
lastname varchar(100) not null,
email varchar(100) not null,
phone varchar(100) not null
);
ALTER TABLE employees AUTO_INCREMENT=100;
select * from employees;

alter table employees
add salary numeric(9, 2);

alter table employees
modify salary integer;

alter table employees
change name first_name varchar(100);

alter table employees
change lastname last_name varchar(100);

alter table employees
drop column phone;

alter table employees
add department varchar(100) not null;

insert into employees(first_name, last_name, email, salary, department) values("Ivan","Ivanov",	"1123@gmail.com", 24000, "Sales");
insert into employees(first_name, last_name, email, salary, department) values("Nadya" , "Pol" , "2123@gmail.com" , 17000 , "Sales");
insert into employees(first_name, last_name, email, salary, department) values("Viktor" , "Lim" , "3123@gmail.com" , 17000 , "Sales");
insert into employees(first_name, last_name, email, salary, department) values("Alla" , "Tofen" , "4123@gmail.com" , 9000 , "Finance");
insert into employees(first_name, last_name, email, salary, department) values("Boric" , "Lamus" , "5123@gmail.com" , 6000 , "Finance");
insert into employees(first_name, last_name, email, salary, department) values("Tanza" , "Kalin" , "6123@gmail.com" , 4800 , "Finance");
insert into employees(first_name, last_name, email, salary, department) values("Roman" , "Penaw" , "7123@gmail.com" , 8800 , "Finance");
insert into employees(first_name, last_name, email, salary, department) values("Monza" , "Monice" , "8123@gmail.com" , 12008 , "Shipping");
insert into employees(first_name, last_name, email, salary, department) values("Daniel" , "Davilan" , "9123@gmail.com" , 9000 , "Shipping");
insert into employees(first_name, last_name, email, salary, department) values("Jose Manuel" , "Fendy" , "0123@gmail.com" , 7800 , "Shipping");
insert into employees(first_name, last_name, email, salary, department) values("Luis" , "Noris" , "99123@gmail.com" , 6900 , "Shipping");
insert into employees(first_name, last_name, email, salary, department) values("Den" , "Lony" , "88123@gmail.com" , 11000 , "Marketing");
insert into employees(first_name, last_name, email, salary, department) values("Alexander" , "Stacyl" , "77@gmail.com" , 3100 , "Marketing");
insert into employees(first_name, last_name, email, salary, department) values("Shelli" , "Baida" , "66123@gmail.com" , 2900 , "Marketing");
insert into employees(first_name, last_name, email, salary, department) values("Sigal" , "Tobias" , "55123@gmail.com" , 2800 , "Marketing");
insert into employees(first_name, last_name, email, salary, department) values("Matthew" , "Wenn" , "44123@gmail.com" , 8000 , "Human Resources");
insert into employees(first_name, last_name, email, salary, department) values("Helen" , "Fripp" , "33123@gmail.com" , 8200 , "Human Resources");
insert into employees(first_name, last_name, email, salary, department) values("Payam" , "Kaufling" , "22123@gmail.com" , 7900 , "Human Resources");
insert into employees(first_name, last_name, email, salary, department) values("Shanta" , "Vollman" , "11123@gmail.com" , 6500 , "Human Resources");
insert into employees(first_name, last_name, email, salary, department) values("John" , "Russell" , "29123@gmail.com" , 5800 , "Human Resources");
insert into employees(first_name, last_name, email, salary, department) values("Julia" , "Torase" , "123@gmail.com" , 2200 , "Human Resources");
insert into employees(first_name, last_name, email, salary, department) values("Laura" , "Bissot" , "123@gmail.com" , 3300 , "Human Resources");
insert into employees(first_name, last_name, email, salary, department) values("Diana" , "Lorentz" , "123@gmail.com" , 2800 , "Human Resources");

select * from employees
where department = 'IT' and salary > 2000;

update employees
set salary = salary * 5
where department = 'Human Resources';

select * from employees
where department = 'Marketing' and salary < 2850;

update employees
set salary = salary * 10
where first_name in ('Laura', 'Adam');

update employees
set last_name = 'King'
where first_name = 'Diana' and last_name = 'Lorentz';

delete from employees
where department = 'Sales';

update employees
set department = 'Marketing', salary = 5000
where first_name = 'John' and last_name = 'Russell';

update employees
set salary = salary / 10
where first_name in ('Laura', 'Adam');

update employees
set email = 'BISSOTLAURA'
where first_name = 'Laura' and last_name = 'Bissot';

update employees
set last_name = 'Lorentz', salary = salary + 2000
where first_name = 'Diana' and last_name = 'King';