create table syoseki
(����ID int primary key
,���Ж� varchar(20)
,�艿 int
,���s�N���� varchar(20)
,����ID int
,�o�Ŏ�ID int
);
create table syuppannsya
(�o�Ŏ�ID int primary key
,�o�ŎЖ� varchar(20)
);
create table tyosya
(����ID int primary key
,���Җ� varchar(20)
);



insert into syoseki(����ID,���Ж�,�艿,���s�N����,����ID,�o�Ŏ�ID)
values(1001,'�l�R�̃q�~�c',600,'2018/1/1',101,101),
(1003,'���̉�',1100,'2015/5/6',101,101),
(1004,'�ʉ�',750,'2012/3/4',103,102),
(1005,'������',3850,'2019/2/18',104,102),
(1007,'�����Ȃ����͂Ȃ�',1800,'1992/7/7',105,101),
(1002,'���ɂ�������l',600,'2020/4/1',101,101),
(1006,'���t',800,'2005/12/12',104,101),
(1008,'�J���Ȃ���͂Ȃ�',2530,'2001/9/4',105,102);

insert into syuppannsya(�o�Ŏ�ID,�o�ŎЖ�)
values(101,'�e�N�m�o��'),
(102,'Axiz����');

insert into tyosya(����ID,���Җ�)
values(101,'���� ��'),
(102,'�R�c ���Y'),
(103,'��� ���Y'),
(104,'��v�� �q��'),
(105,'��c �O');



