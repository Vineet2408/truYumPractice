create database truyumCase;
use truyumCase;
create table menu_item(product_id int primary key auto_increment,
name varchar(100) not null,
price decimal(5,2) not null,
active enum('Yes','No') not null,
date_of_launch date not null,
category varchar(20) not null,
free_delivery enum('Yes','No')  not null
);


create table user(
user_id int primary key auto_increment,
user_type varchar(10)  not null
);

create table cart(
order_id int primary key auto_increment,
user_id int not null,
product_id int not null,
name varchar(100) not null,
price decimal(5,2) not null,
category varchar(20) not null,
free_delivery enum('Yes','No') not null,
foreign key(product_id) references menu_item(product_id),
foreign key(user_id) references user(user_id)
);
