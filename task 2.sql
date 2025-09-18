use employee;
create table shop1(
product_name varchar(30),
price decimal(10,2)
);

alter table shop1 add column Quandity int;

create table shop2(
product_name varchar(30),
price decimal(10,2)
);
alter table shop2 add column Quandity int;
create table shop3(
product_name varchar(30),
price decimal(10,2)
);
alter table shop3 add column Quandity int;


insert into shop1 values('carrot',70.40,1),('wheate',40,2),('Rice',300,35);

insert into shop2 values('carrot',20,1),('tomato',40,1),('beans',70,2);

insert into shop3 values('Beetroot',40.00,1),
('carrot',	100.00	,4),('beans',500.00,2),('rice',60,2);

select s1.product_name from 
shop1 s1,shop2 s2, shop3 s3 
where s1.product_name = s2.product_name
and s2.product_name = s3.product_name;

select s1.product_name,s2.product_name,s3.product_name from 
shop1 s1 left join shop2 s2 on 
s1.product_name = s2.product_name 
left join shop3 s3 on 
s2.product_name = s3.product_name;

select s1.product_name,s2.product_name,s3.product_name from 
shop1 s1 right join shop2 s2 on 
s1.product_name = s2.product_name right join
 shop3 s3 on 
s2.product_name = s3.product_name;


select * from shop1
union all
select * from shop2
union all
select * from shop3;





