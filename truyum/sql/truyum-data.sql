use truyumCase;

/*insert in menu_item table*/

insert into menu_item (name,price,active,date_of_launch,category,free_delivery)
values("Sandwich",99.00,"Yes","2017-01-15","Main Course","Yes");
insert into menu_item (name,price,active,date_of_launch,category,free_delivery)
values("Burger",129.00,"Yes","2017-12-23","Main Course","No");
insert into menu_item (name,price,active,date_of_launch,category,free_delivery)
values("Pizza",149.00,"Yes","2017-08-21","Main Course","No");
insert into menu_item (name,price,active,date_of_launch,category,free_delivery)
values("French Fries",57.00,"Yes","2017-07-02","Starters","Yes");
insert into menu_item (name,price,active,date_of_launch,category,free_delivery)
values("Chocalate Brownie",32.00,"Yes","2012-11-02","Dessert","Yes");

/*insert in user table */
insert into user (user_type) values("admin");
insert into user (user_type) values("customer");
insert into user (user_type,user_name) values("customer","abc");

/* insert in cart table */
insert into cart (user_id,product_id,name,price,category,free_delivery)
 values(2,1,"Sandwich",99.00,"Main Course","Yes");
 insert into cart (user_id,product_id,name,price,category,free_delivery)
 values(2,2,"Burger",129.00,"Main Course","No");
 insert into cart (user_id,product_id,name,price,category,free_delivery)
 values(2,3,"Sandwich",149.00,"Main Course","No");
 
 insert into cart (user_id,product_id,name,price,category,free_delivery)
 values(3,4,"French Fries",57.00,"Sarters","No");
 
 /*update in cart table*/
 update cart set free_delivery="Yes" where product_id=4;
 /*update product in menu_item table*/
 update menu_item set active="No" where id=5;
 
 /*delete profuct from cart table */
 delete from cart where product_id=4;

select * from menu_item; 
select * from user;
select * from cart;

