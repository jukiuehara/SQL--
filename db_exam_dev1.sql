CREATE TABLE  customer(
 customer_id INT primary key
, customer_name  VARCHAR(50)
); 

CREATE TABLE  sales(
 sales_id INT primary key
, order_date date
, customer_id INT NOT NULL REFERENCES customer(customer_id)
, amount DECIMAL
); 

insert into customer
(customer_id,customer_name)
values(1,'�c��'),
(2,'���'),
(3,'�c��'),
(4,'�c��');

 INSERT INTO sales 
 (sales_id,order_date,customer_id,amount)
 VALUES(1, '2018/11/01',1,3000),
(2, '2018/10/01',3,5000),
(3, '2018/10/01',4,6000),
(4, '2018/11/02',2,2000),
(5, '2018/11/15',2,NULL);

select * from sales
where amount < 5000; 

select * from sales
where amount >= 5000; 

select amount * 1.1 from sales ;

select * from sales
where amount IS NOT NULL;

select * from customer
where customer_name <> '�c��';

update sales
set order_date='2018/11/05'
where sales_id = 4;

update sales
set customer_id = '4'
where sales_id = 4;

delete from sales
where amount is null;
