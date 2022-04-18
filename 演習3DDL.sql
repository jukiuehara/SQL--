create table syoseki
(書籍ID int primary key
,書籍名 varchar(20)
,定価 int
,発行年月日 varchar(20)
,著者ID int
,出版社ID int
);
create table syuppannsya
(出版社ID int primary key
,出版社名 varchar(20)
);
create table tyosya
(著者ID int primary key
,著者名 varchar(20)
);



insert into syoseki(書籍ID,書籍名,定価,発行年月日,著者ID,出版社ID)
values(1001,'ネコのヒミツ',600,'2018/1/1',101,101),
(1003,'星の歌',1100,'2015/5/6',101,101),
(1004,'凸凹',750,'2012/3/4',103,102),
(1005,'こころ',3850,'2019/2/18',104,102),
(1007,'欠けない月はない',1800,'1992/7/7',105,101),
(1002,'犬にたかられる人',600,'2020/4/1',101,101),
(1006,'教師',800,'2005/12/12',104,101),
(1008,'開けない夜はない',2530,'2001/9/4',105,102);

insert into syuppannsya(出版社ID,出版社名)
values(101,'テクノ出版'),
(102,'Axiz文庫');

insert into tyosya(著者ID,著者名)
values(101,'阿句 静'),
(102,'山田 太郎'),
(103,'鈴木 次郎'),
(104,'手久野 子亜'),
(105,'坂田 三');



