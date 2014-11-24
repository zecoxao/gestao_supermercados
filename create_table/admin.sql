create table person(
citizen_card int primary key,
name VARCHAR2(50) not null,
address varchar2(100) not null,
phone int not null
);

create table supplier(
supplier_id int primary key,
company_name varchar2(50) not null,
person references person(citizen_card)
);

create table supply(
supply_id int primary key,
date_supply date default sysdate,
cost_supply number(4,2) not null,
supplier references supplier(supplier_id)
);

create table client(
person int primary key references person(citizen_card),
email varchar2(50) not null unique,
pass varchar2(64) not null
);

create table orders(
order_id int primary key,
date_order date default sysdate,
date_shipped date default sysdate,
shipping number(4,2) not null,
client references client(person)
);

create table product(
ISBN int primary key,
type varchar2(50),
name varchar2(100),
amount_unit int not null,
price number(4,2) not null,
units_stock int not null,
discontinued number(1) not null check (discontinued in (0,1))
);

create table promotion(
promotion_id int primary key,
promotion_type varchar2(1) not null check (promotion_type in ('V','P')),
date_beginning date default sysdate,
date_end date default sysdate,
val1 int default 0,
val2 int default 0
);

create table product_promotion(
primary key (product,promotion),
price number(4,2) not null,
product references product(ISBN),
promotion references promotion(promotion_id)
);