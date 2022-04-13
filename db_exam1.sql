
CREATE TABLE  major(
 major_id INT primary key
, major_name  VARCHAR(50)
); 

INSERT INTO major 
(major_id, major_name)
 VALUES (1, '英文学');
 
 INSERT INTO major 
(major_id, major_name)
 VALUES (2, '応用化学');
 
 drop table student;
 
 CREATE TABLE  student(
 student_id INT primary key
, student_name  VARCHAR(50)
,grade INT
,hometown VARCHAR(50)
,major_id INT NOT NULL REFERENCES major(major_id)
); 

INSERT INTO student 
(student_id, student_name,grade,hometown,major_id)
 VALUES (1, '山田',1, '宮城',1);
 INSERT INTO student 
(student_id, student_name,grade,hometown,major_id)
 VALUES (2, '田中',2, '東京',2);

 
 INSERT INTO major 
(major_id, major_name)
 VALUES (3, '情報工学');
  INSERT INTO major 
(major_id, major_name)
 VALUES (4, '経済学');
   INSERT INTO major 
(major_id, major_name)
 VALUES (5, '国際文化');
 
 INSERT INTO student 
 (student_id, student_name,grade,hometown,major_id)
 VALUES (3, '佐藤',1, '東京',3),
(4, '鈴木',2, '鹿児島',1),
(5, '高橋',2, '北海道',2),
(6, '吉高',2, '東京',1),
(7, '伊藤',3, '鹿児島',2),
(8, '山本',3, '神奈川',3),
(9, '森本',4, '沖縄',4),
(10, '吉岡',4, '神奈川',5)
 ;

DROP TABLE student;
  CREATE TABLE  student(
 student_id INT primary key
, student_name  VARCHAR(50)
,grade INT
,hometown VARCHAR(50)
,major_id INT NOT NULL REFERENCES major(major_id)
); 
INSERT INTO student 
(student_id, student_name,grade,hometown,major_id)
 VALUES (1, '山田',1, '宮城',1);
 INSERT INTO student 
(student_id, student_name,grade,hometown,major_id)
 VALUES (2, '田中',1, '東京',2);
  INSERT INTO student 
 (student_id, student_name,grade,hometown,major_id)
 VALUES (3, '佐藤',1, '東京',3),
(4, '鈴木',2, '鹿児島',1),
(5, '高橋',2, '北海道',2),
(6, '吉高',2, '東京',1),
(7, '伊藤',3, '鹿児島',2),
(8, '山本',3, '神奈川',3),
(9, '森本',4, '沖縄',4),
(10, '吉岡',4, '神奈川',5)
 ;
  SELECT *  FROM student
WHERE grade = 1;

  SELECT *  FROM student
WHERE hometown = '東京';

select major_name from major;

update student
set grade='3'
where student_id = 10;

delete from student
where student_id = 10;