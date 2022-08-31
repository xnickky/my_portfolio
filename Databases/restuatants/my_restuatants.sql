------ create table 1 : menu
create table menu (
    menu_id INT,
    menu_name text,
    type text,
    price real,
    PRIMARY KEY(menu_id)
);

------ insert data to table 1 : menu
insert into menu values
    (1,"Pizza","Food",199),
    (2,"Curry and Rice","Food",120),
    (3,"Milk","Beverage",50),
    (4,"Coke","Beverage",45),
    (5,"Coffee","Beverage",39),      
    (6,"Cake","Dessert",79),
    (7,"Sea Food Set","Food",399),
    (8,"Chicken Salad","Food",199),
    (9,"Pork Hamburger","Fast Food",99),
    (10,"Mushroom Soup","Food",89);

------ create table 2 : customers
create table customers (
    customer_id int,
    customer_name text,
    customer_telephone varchar,
    customer_table int,
    PRIMARY KEY (customer_id)
);

------ insert data to table 2 : customers
insert into customers VALUES
    (1,"Nickky","080-880-8080",2),
    (2,"Jonny","081-881-8181",3),
    (3,"Conny","082-882-8282",5),
    (4,"Pepper","083-883-8383",1),
    (5,"Sersi","099-990-9988",4),
    (6,"Nicki","080-880-0808",2),
    (7,"Jonn","081-881-1818",3),
    (8,"Con","082-882-2828",5),
    (9,"Pepp","083-883-3838",1),
    (10,"Serst","099-990-8899",4);

------ create table 3 : employees
create table employees (
    employee_id int,
    employee_name text,
  	employee_lastname TEXT,
  	employee_locate INT,
    primary key (employee_id)
);

------ insert data to table 3 : employees
insert into employees values
    (1,"AAA","BBB",5),
    (2,"CCC","DDD",4),
    (3,"EEE","GGG",3),
    (4,"QQQ","ZZZ",2),
    (5,"RRR","IOP",1);

------ create table 4 : invoice
CREATE TABLE invoice (
	invoice_id INT,
  	invoice_datetime TEXT,
  	customer_id INT,
  	employee_id int,
  	locate_id INT,
  	menu_id INT,
  	PRIMARY KEY (invoice_id),
  	FOREIGN KEY (menu_id) REFERENCES menu(menu_id),
  	FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
  	FOREIGN KEY (employee_id) REFERENCES employees(employee_id),
  	FOREIGN KEY (locate_id) REFERENCES location(locate_id)
  );
 
------ insert data table 4 : invoice
INSERT into invoice VALUES 
	(0001,'05-05-2565 10:12:32',1,1,5,8),
    (0002,'06-05-2565 11:22:32',2,2,4,5),
    (0003,'07-05-2565 12:32:32',3,3,3,2),
    (0004,'08-05-2565 17:12:32',4,4,2,1),
    (0005,'09-05-2565 20:32:32',5,5,1,3),
    (0006,'10-05-2565 16:42:32',6,5,1,7),
    (0007,'11-05-2565 10:12:32',7,4,2,9),
    (0008,'12-05-2565 20:52:32',8,3,3,10),
    (0009,'13-05-2565 22:42:32',9,2,4,6),
    (0010,'15-05-2565 23:02:32',10,1,5,4);

------ create table 5 : location
create table location (
    locate_id int,
    locate_name text,
    primary key (locate_id)
);

------ insert data to table 5 : location
insert into location VALUES
    (1,"Phaya Thai"),
    (2,"Bang Na"),
    (3,"Lat Krabang"),
    (4,"Mueng Chonburi"),
    (5,"Pattaya");

select * from menu;
select * from customers;
select * from employees;
select * from location;
select * from invoice;
