-- sql industrial practical task
-- e-commerce product inventory management

-- part a - database & table creation

-- task 1: create a database named ecommerce_db
create database ecommerce_db;

-- task 2: use/select the ecommerce_db database
use ecommerce_db;

-- task 3: create a table named products with given columns
create table products (
    product_id int primary key,
    product_name varchar(100),
    category varchar(50),
    brand varchar(50),
    price decimal(10,2),
    quantity int,
    city varchar(50),
    status varchar(20)
);

-- task 4: display structure of products table
desc products;

-- task 5: display all tables inside ecommerce_db
show tables;

-- part b - insert operations

-- task 6: insert record 201 galaxy m55
insert into products values (201,'Galaxy M55','Mobile','Samsung',32000,15,'Pune','Available');

-- task 7: insert record 202 iphone 15
insert into products values (202,'iPhone 15','Mobile','Apple',65000,8,'Mumbai','Available');

-- task 8: insert record 203 moto edge 50
insert into products values (203,'Moto Edge 50','Mobile','Motorola',28000,20,'Pune','Available');

-- task 9: insert record 204 inspiron 15
insert into products values (204,'Inspiron 15','Laptop','Dell',58000,6,'Nashik','Available');

-- task 10: insert record 205 ideapad slim 3
insert into products values (205,'IdeaPad Slim 3','Laptop','Lenovo',45000,12,'Mumbai','Available');

-- task 11: insert record 206 galaxy watch 6
insert into products values (206,'Galaxy Watch 6','Watch','Samsung',22000,4,'Pune','Out of Stock');

-- task 12: insert record 207 apple watch se
insert into products values (207,'Apple Watch SE','Watch','Apple',30000,10,'Mumbai','Available');

-- task 13: insert record 208 redmi pad
insert into products values (208,'Redmi Pad','Tablet','Xiaomi',24000,18,'Pune','Available');

-- task 14: insert record 209 oneplus pad
insert into products values (209,'OnePlus Pad','Tablet','OnePlus',35000,5,'Nashik','Available');

-- task 15: insert record 210 bluetooth speaker
insert into products values (210,'Bluetooth Speaker','Accessories','JBL',7000,25,'Mumbai','Available');

-- part c - select operations

-- task 16: display all records
select * from products;

-- task 17: display only product_name
select product_name from products;

-- task 18: display product_name and price
select product_name, price from products;

-- task 19: display product_name, category, brand, price
select product_name, category, brand, price from products;

-- task 20: display products available in Pune
select * from products where city='Pune';

-- task 21: display products available in Mumbai
select * from products where city='Mumbai';

-- task 22: display all Mobile products
select * from products where category='Mobile';

-- task 23: display all Laptop products
select * from products where category='Laptop';

-- task 24: price greater than 30000
select * from products where price > 30000;

-- task 25: price less than 30000
select * from products where price < 30000;

-- task 26: price equal to 35000
select * from products where price = 35000;

-- task 27: price greater than or equal to 45000
select * from products where price >= 45000;

-- task 28: price less than or equal to 30000
select * from products where price <= 30000;

-- task 29: quantity greater than 10
select * from products where quantity > 10;

-- task 30: quantity less than 10
select * from products where quantity < 10;

-- part d - logical operators

-- task 31: Pune AND Mobile
select * from products where city='Pune' and category='Mobile';

-- task 32: Mumbai AND Available
select * from products where city='Mumbai' and status='Available';

-- task 33: price > 30000 AND quantity > 5
select * from products where price > 30000 and quantity > 5;

-- task 34: price between 30000 and 60000
select * from products where price >= 30000 and price <= 60000;

-- task 35: Pune OR Mumbai
select * from products where city='Pune' or city='Mumbai';

-- task 36: Mobile OR Laptop
select * from products where category='Mobile' or category='Laptop';

-- task 37: quantity < 10 OR price > 50000
select * from products where quantity < 10 or price > 50000;

-- task 38: Mobile AND price > 30000
select * from products where category='Mobile' and price > 30000;

-- task 39: Samsung OR Apple
select * from products where brand='Samsung' or brand='Apple';

-- task 40: Pune AND Available AND quantity > 10
select * from products where city='Pune' and status='Available' and quantity > 10;

-- part e - operators

-- task 41: between 25000 and 50000
select * from products where price between 25000 and 50000;

-- task 42: quantity between 5 and 15
select * from products where quantity between 5 and 15;

-- task 43: category in mobile laptop tablet
select * from products where category in ('Mobile','Laptop','Tablet');

-- task 44: city in pune mumbai
select * from products where city in ('Pune','Mumbai');

-- task 45: not samsung
select * from products where brand != 'Samsung';

-- task 46: not out of stock
select * from products where status != 'Out of Stock';

-- task 47: not equal 30000
select * from products where price != 30000;

-- task 48: name starts with galaxy
select * from products where product_name like 'Galaxy%';

-- task 49: name contains pad
select * from products where product_name like '%Pad%';

-- task 50: mobile and (price > 30000 OR quantity > 15)
select * from products where category='Mobile' and (price > 30000 or quantity > 15);

-- part f - update

-- task 51: update galaxy m55 price
update products set price=34000 where product_name='Galaxy M55';

-- task 52: update iphone 15 quantity
update products set quantity=12 where product_name='iPhone 15';

-- task 53: update galaxy watch 6 status
update products set status='Available' where product_name='Galaxy Watch 6';

-- task 54: increase price of mobile by 2000
update products set price=price+2000 where category='Mobile';

-- task 55: increase quantity of pune products
update products set quantity=quantity+5 where city='Pune';

-- task 56: update status out of stock for quantity < 5
update products set status='Out of Stock' where quantity < 5;

-- part g - delete

-- task 57: delete product_id 210
delete from products where product_id=210;

-- task 58: delete price less than 8000
delete from products where price < 8000;

-- task 59: delete out of stock and quantity < 5
delete from products where status='Out of Stock' and quantity < 5;

-- task 60: delete tablet price greater than 30000
delete from products where category='Tablet' and price > 30000;
