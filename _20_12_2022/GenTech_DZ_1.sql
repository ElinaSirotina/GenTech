create database homework;


create table students(
id integer primary key not null auto_increment,
firstname varchar(100) not null,
lastname varchar(100) not null,
class integer check(class between 1 and 10),
subject varchar(50) not null,
mark integer check(mark between 0 and 5)
);

insert into students(firstname, lastname, class, subject, mark)
values('Elina', 'Sirotina', 7, 'Math', 5),
('Anna', 'Lobova', 8, 'English', 4),
('Serge', 'Lapack', 9, 'Deutsch', 3),
('Sveta', 'Mark', 6, 'Spainish', 5),
('Polina', 'Ilc', 2, 'Deutsch', 5),
('Ivan', 'Ivanov', 5, 'France', 4),
('Venera', 'Mark', 9, 'English', 5),
('Elena', 'Loyd', 1, 'Deutsch', 2),
('Serhijr', 'Ruban', 6, 'Deutsch', 4),
('Emanuil', 'Schwiman', 5, 'Math', 0);

select * from students;
set sql_safe_updates = 0;

delete from students
where mark = 0;

select * from students
where mark > 3;

select * from students
where class = 1 and mark < 3;

delete from students
where class = 1 and mark < 3;

select * from students
where length(firstname) > 4;

select * from students
where firstname like 'a%' and length(firstname) > 2;

delete from students
where not ((subject = 'Deutsch' and mark > 4) or (class between 7 and 10 and mark < 3));

drop table students;