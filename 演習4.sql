--ââèK4
--1-1
create index name on major(major_name);
--1-2
create index sname on student(student_name);
--1-3
create index gradename on student(grade,student_name);

--2
create view v_student as 
select student_id,student_name,hometown,major_name
from major
inner join student
on student.major_id = major.major_id
where hometown not in('ìåãû')
order by major_name;

SELECT * FROM v_student

--3
create materialized view mv_student as
select student_id,student_name,hometown,major_name
from major
inner join student
on student.major_id = major.major_id
where hometown not in('ìåãû')
order by major_name;

SELECT * FROM mv_student;

--4
CREATE OR REPLACE FUNCTION juki(price decimal) RETURNS integer
 LANGUAGE plpgsql
AS $function$
declare

begin

    return trunc(price * 1.1, 0);
    
end; $function$;

select * ,juki(amount)
from sales
order by sales_id limit 5;

--5


create table users
(id serial primary key,name varchar(50));

SELECT c.relname FROM pg_class c LEFT join pg_user u ON c.relowner = u.usesysid WHERE c.relkind = 'S';


ALTER SEQUENCE customer_code_seq START WITH 101

insert into users (name)VALUES('Ç†');

select * from users;
