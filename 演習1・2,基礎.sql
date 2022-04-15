--2
CREATE TABLE  major(
 major_id INT primary key
, major_name  VARCHAR(50)
); 


 
 drop table student;
 --3
 CREATE TABLE  student(
 student_id INT primary key
, student_name  VARCHAR(50)
,grade INT
,hometown VARCHAR(50)
,major_id INT NOT NULL REFERENCES major(major_id)
); 

--4
INSERT INTO major 
(major_id, major_name)
 VALUES (1, '�p���w');
 
 INSERT INTO major 
(major_id, major_name)
 VALUES (2, '���p���w');
 INSERT INTO major 
(major_id, major_name)
 VALUES (3, '���H�w');
  INSERT INTO major 
(major_id, major_name)
 VALUES (4, '�o�ϊw');
   INSERT INTO major 
(major_id, major_name)
 VALUES (5, '���ە���');

--5
 INSERT INTO student 
(student_id, student_name,grade,hometown,major_id)
 VALUES (1, '�R�c',1, '�{��',1);
 INSERT INTO student 
(student_id, student_name,grade,hometown,major_id)
 VALUES (2, '�c��',2, '����',2);

 INSERT INTO student 
 (student_id, student_name,grade,hometown,major_id)
 VALUES (3, '����',1, '����',3),
(4, '���',2, '������',1),
(5, '����',2, '�k�C��',2),
(6, '�g��',2, '����',1),
(7, '�ɓ�',3, '������',2),
(8, '�R�{',3, '�_�ސ�',3),
(9, '�X�{',4, '����',4),
(10, '�g��',4, '�_�ސ�',5)
 ;

DROP TABLE student;--５の値が間違っていたので作りなおしています。
  CREATE TABLE  student(
 student_id INT primary key
, student_name  VARCHAR(50)
,grade INT
,hometown VARCHAR(50)
,major_id INT NOT NULL REFERENCES major(major_id)
); 
INSERT INTO student 
(student_id, student_name,grade,hometown,major_id)
 VALUES (1, '�R�c',1, '�{��',1);
 INSERT INTO student 
(student_id, student_name,grade,hometown,major_id)
 VALUES (2, '�c��',1, '����',2);
  INSERT INTO student 
 (student_id, student_name,grade,hometown,major_id)
 VALUES (3, '����',1, '����',3),
(4, '���',2, '������',1),
(5, '����',2, '�k�C��',2),
(6, '�g��',2, '����',1),
(7, '�ɓ�',3, '������',2),
(8, '�R�{',3, '�_�ސ�',3),
(9, '�X�{',4, '����',4),
(10, '�g��',4, '�_�ސ�',5)
 ;

 --6
  SELECT *  FROM student
WHERE grade = 1;
--7
SELECT *  FROM student
WHERE hometown = '����';
--8
select major_name from major;
--9
update student
set grade='3'
where student_id = 10;
--10
delete from student
where student_id = 10;
--ここから演習2の基礎です。
--1
select * from student
where grade = 1
and hometown = '����';

--2
select * from student
where grade = 1
or student_name like'%�{'
order by student_id;

--3
select
major_id
,max(grade)
FROM student
group by major_id
order by major_id;

--4
select
hometown
,count(*)
FROM student
group by hometown
having count(*)>=2
order by hometown;

--5
select
student_name,major_name
from major
inner join student
on student_id = major.major_id
order by student_name,major_name;

--6
select
student_id,student_name,hometown,major_name
from student
inner join major
on student.major_id= major.major_id
where hometown not in ('����')
order by major_name,student_id;

--7
select student_id, student_name,grade
from student
where student.major_id = (select major.major_id
from major
where major_name ='�p���w')
order by student_id, student_name,grade;

--8
select student_id,student_name,major_id
from student 
where major_id in (select major_id
from student
group by major_id
having count(major_id)>=3)
order by major_id,student_id; 



