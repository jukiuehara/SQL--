--1
CREATE TABLE  customer(
 customer_id INT primary key
, customer_name  VARCHAR(50)
); 
--2
CREATE TABLE  sales(
 sales_id INT primary key
, order_date date
, customer_id INT NOT NULL REFERENCES customer(customer_id)
, amount DECIMAL
); 
--3
insert into customer
(customer_id,customer_name)
values(1,'�c��'),
(2,'���'),
(3,'�c��'),
(4,'�c��');
--4
 INSERT INTO sales 
 (sales_id,order_date,customer_id,amount)
 VALUES(1, '2018/11/01',1,3000),
(2, '2018/10/01',3,5000),
(3, '2018/10/01',4,6000),
(4, '2018/11/02',2,2000),
(5, '2018/11/15',2,NULL);
--5
select * from sales
where amount < 5000; 
--6
select * from sales
where amount >= 5000; 
--7
select amount * 1.1 from sales ;
--8
select * from sales
where amount IS NOT NULL;
--9
select * from customer
where customer_name <> '�c��';
--10
update sales
set order_date='2018/11/05'
where sales_id = 4;
--11
update sales
set customer_id = '4'
where sales_id = 4;
--12
delete from sales
where amount is null;

--
--1
create table sales_old(
sales_id int primary key,
order_date date,
customer_id int NOT NULL REFERENCES customer(customer_id),
amount decimal 
);

--2
insert into sales_old
values(6,'2018/09/02',2,20000),
(7,'2018/09/02',1,5000),
(8,'2018/09/02',3,6000),
(9,'2018/09/05',1,3000);

--3
INSERT INTO SALES
SELECT * FROM SALES_OLD;

--4
drop table sales_old;

--5

SELECT sales_id,order_date,
  case when order_date <= '2018/10/01' THEN '�Z'  
        ELSE null END AS is_old
FROM sales
order by order_date;

--6
select customer_id ||':'||customer_name AS customer_id_name
from customer;

--7


SELECT * FROM sales 
where customer_id = 1
ORDER BY order_date desc LIMIT 2;

--8
select order_date,sum(amount) as sum_amount
from sales 
where order_date = (select min(order_date)
from sales)
group by order_date;



--9
select sales.customer_id,customer.customer_name, trunc(avg(amount)) as avg_smount
from sales
inner join customer
on sales.customer_id = customer.customer_id
group by customer_name,sales.customer_id
order by customer_id;


--10
select * 
from sales
where sales_id = (select sales_id
from sales
where order_date between '2018/09/01'and'2018/09/30' limit 1);




