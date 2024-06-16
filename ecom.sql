create database ecommerce;
use ecommerce;
create table Customer(
customer_id int(10),
first_name varchar(100),
last_name varchar(100),
email varchar(100),
phone_number varchar(15),
primary key(customer_id)
);

create table category(
category_id int(10),
cat_name varchar(255)
);
ALTER TABLE category ADD INDEX (category_id);

create table product(
product_id int(10),
p_name varchar(100),
decription varchar(100),
price decimal(10,2),
category_id int(10),
stock_quantity int(10),
primary key (product_id),
foreign key (category_id) references category(category_id)
on delete set null
);
create table orders(
order_id int(10),
customer_id int(10),
order_date datetime,
order_status varchar(50),
total_price decimal(10,2)
);
ALTER TABLE orders ADD INDEX (order_id);
create table order_item(
order_item_id int(10),
order_id int(10),
product_id int(10),
quantiry int(10),
price decimal(10,2),
primary key (order_item_id),
foreign key (order_id) references orders(order_id)
on delete set null
);
use ecommerce;
alter table orders
add primary key(order_id);
alter table orders
add foreign key(customer_id) references customer(customer_id)
on delete cascade;
alter table order_item
add foreign key(product_id) references product(product_id)
on delete set null;

show tables;
describe category;
describe customer;
describe order_item;
describe orders;
describe product;


use ecommerce;
show tables;
describe customer;
insert into customer values(" 1 "," John "," Smith "," John@gmail.com "," 9866155000 ");
insert into customer values(" 2 "," Emily "," Johnson "," Emily@gmail.com "," 9866155001 ");
insert into customer values(" 3 "," Robert "," Williams "," Robert@gmail.com "," 9866155002 ");
insert into customer values(" 4 "," Jessica "," Brown "," Jessica@gmail.com "," 9866155003 ");
insert into customer values(" 5 "," Michael "," Jones "," Michael@gmail.com "," 9866155004 ");
insert into customer values(" 6 "," Sarah "," Garcia "," Sarah@gmail.com "," 9866155005 ");
insert into customer values(" 7 "," David "," Miller "," David@gmail.com "," 9866155006 ");
insert into customer values(" 8 "," Ashley "," Davis "," Ashley@gmail.com "," 9866155007 ");
insert into customer values(" 9 "," James "," Rodriguez "," James@gmail.com "," 9866155008 ");
insert into customer values(" 10 "," Jennifer "," Martinez "," Jennifer@gmail.com "," 9866155009 ");

select * from customer;

show tables;
delete from category;


insert into category values(' 100 ',' Electronics ');
insert into category values(' 101 ',' Books ');
insert into category values(' 102 ',' Clothing ');
insert into category values(' 103 ',' Home Decor ');
insert into category values(' 104 ',' Sports Equipment ');
insert into category values(' 105 ',' Beauty Products ');
insert into category values(' 106 ',' Toys ');
insert into category values(' 107 ',' Groceries ');
insert into category values(' 108 ',' Kitchen Appliances ');
insert into category values(' 109 ',' Gardening Supplies ');

insert into product values(' 1 ',' Product A ',' This is product A ',' 10.99 ',' 100 ',' 50 ');
insert into product values(' 2 ',' Product B ',' This is product B ',' 20.99 ',' 101 ',' 40 ');
insert into product values(' 3 ',' Product C ',' This is product C ',' 30.99 ',' 102 ',' 30 ');
insert into product values(' 4 ',' Product D ',' This is product D ',' 40.99 ',' 103 ',' 20 ');
insert into product values(' 5 ',' Product E ',' This is product E ',' 50.99 ',' 104 ',' 10 ');
insert into product values(' 6 ',' Product F ',' This is product F ',' 60.99 ',' 105 ',' 60 ');
insert into product values(' 7 ',' Product G ',' This is product G ',' 70.99 ',' 106 ',' 70 ');
insert into product values(' 8 ',' Product H ',' This is product H ',' 80.99 ',' 107 ',' 80 ');
insert into product values(' 9 ',' Product I ',' This is product I ',' 90.99 ',' 108 ',' 90 ');
insert into product values(' 10 ',' Product J ',' This is product J ',' 100.99 ',' 109 ',' 100 ');

INSERT INTO Orders(order_id,customer_id,order_status) VALUES(' 9397507 ',' 1 ',' completed ');
INSERT INTO Orders(order_id,customer_id,order_status) VALUES(' 574661 ',' 2 ',' completed ');
INSERT INTO Orders(order_id,customer_id,order_status) VALUES(' 316412 ',' 3 ',' completed ');
INSERT INTO Orders(order_id,customer_id,order_status) VALUES(' 7363247 ',' 4 ',' shipped ');
INSERT INTO Orders(order_id,customer_id,order_status) VALUES(' 2380482 ',' 5 ',' shipped ');
INSERT INTO Orders(order_id,customer_id,order_status) VALUES(' 1394803 ',' 6 ',' shipped ');
INSERT INTO Orders(order_id,customer_id,order_status) VALUES(' 1574313 ',' 7 ',' shipped ');
INSERT INTO Orders(order_id,customer_id,order_status) VALUES(' 2212451 ',' 8 ',' completed ');
INSERT INTO Orders(order_id,customer_id,order_status) VALUES(' 1676503 ',' 9 ',' shipped ');
INSERT INTO Orders(order_id,customer_id,order_status) VALUES(' 1479455 ',' 10 ',' completed ');

INSERT INTO Orders(order_id,customer_id,order_status) VALUES(' 8423970 ',' 1 ',' completed ');
INSERT INTO Orders(order_id,customer_id,order_status) VALUES(' 6967143 ',' 2 ',' pending ');
INSERT INTO Orders(order_id,customer_id,order_status) VALUES(' 2644499 ',' 3 ',' completed ');
INSERT INTO Orders(order_id,customer_id,order_status) VALUES(' 4695470 ',' 4 ',' completed ');
INSERT INTO Orders(order_id,customer_id,order_status) VALUES(' 1769025 ',' 5 ',' completed ');
INSERT INTO Orders(order_id,customer_id,order_status) VALUES(' 1489999 ',' 6 ',' completed ');
INSERT INTO Orders(order_id,customer_id,order_status) VALUES(' 6620116 ',' 7 ',' completed ');
INSERT INTO Orders(order_id,customer_id,order_status) VALUES(' 3914584 ',' 8 ',' pending ');
INSERT INTO Orders(order_id,customer_id,order_status) VALUES(' 4260187 ',' 9 ',' completed ');
INSERT INTO Orders(order_id,customer_id,order_status) VALUES(' 7686821 ',' 10 ',' pending ');
use ecommerce;
select * from orders
order by order_id;
select*from orders
order by customer_id desc;
select* from orders
order by order_status desc,customer_id asc;
delete from orders where order_id='1110';
select *from orders 
where order_status='pending';