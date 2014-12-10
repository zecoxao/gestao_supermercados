insert into person (CITIZEN_CARD,NAME,ADDRESS,PHONE) values (13733243,'José Coixão','Rua Sr dos Passos 22',965350967);
insert into person (CITIZEN_CARD,NAME,ADDRESS,PHONE) values (12345678,'Ana Maria','Rua Sr dos Passos 22',987654321);
insert into person (CITIZEN_CARD,NAME,ADDRESS,PHONE) values (87654321,'José Luís','Rua Almeida Martins 20',912345678);

insert into client (person,email,pass) values (13733243,'zecoxao@hotmail.com','00112233445566778899aabbccddeeffffeeddccbbaa99887766554433221100');
insert into client (person,email,pass) values (12345678,'ana_maria@hotmail.com','ffeeddccbbaa9988776655443322110000112233445566778899aabbccddeeff');

insert into supplier(supplier_id,COMPANY_NAME,person) values (1,'Eletrodomésticos Fagor',87654321);

insert into supply(supply_id,supplier,date_supply,cost_supply) values (1,1,to_date('12/10/12','DD/MM/YY'),399.99);
insert into supply(supply_id,supplier,date_supply,cost_supply) values (2,1,to_date('28/10/12','DD/MM/YY'),99.99);
insert into supply(supply_id,supplier,date_supply,cost_supply) values (3,1,to_date('3/11/10','DD/MM/YY'),299.50);
insert into supply(supply_id,supplier,date_supply,cost_supply) values (4,1,to_date('24/12/11','DD/MM/YY'),299.50);
insert into supply(supply_id,supplier,date_supply,cost_supply) values (5,1,to_date('24/10/11','DD/MM/YY'),0.95);
insert into supply(supply_id,supplier,date_supply,cost_supply) values (6,1,to_date('24/07/12','DD/MM/YY'),0.50);
insert into supply(supply_id,supplier,date_supply,cost_supply) values (7,1,to_date('24/09/11','DD/MM/YY'),3.95);

insert into orders (order_id,date_order,date_shipped,shipping,client) values (1,to_date('03/10/14','dd/mm/yy'),sysdate,20,13733243);
insert into orders (order_id,date_order,date_shipped,shipping,client) values (2,to_date('01/02/13','dd/mm/yy'),to_date('02/03/13','dd/mm/yy'),30,12345678);
insert into orders (order_id,date_order,date_shipped,shipping,client) values (3,to_date('10/03/14','dd/mm/yy'),sysdate,45,13733243);
insert into orders (order_id,date_order,date_shipped,shipping,client) values (4,to_date('01/03/13','dd/mm/yy'),to_date('02/03/13','dd/mm/yy'),5,12345678);

insert into product (isbn,type,name,amount_unit,price,units_stock,discontinued) values (1234567890,'Fruits','Bananas',5,3.95,40,0);
insert into product (isbn,type,name,amount_unit,price,units_stock,discontinued) values (1434567890,'Fruits','Pears',1,2.95,30,0);
insert into product (isbn,type,name,amount_unit,price,units_stock,discontinued) values (1434546890,'Fruits','Apples',1,2.45,70,0);

insert into promotion (promotion_id,PROMOTION_TYPE,date_beginning,date_end,val1,val2) values (1,'V',sysdate,to_date('12/12/12','DD/MM/YY'),50,0);
insert into promotion (promotion_id,PROMOTION_TYPE,date_beginning,date_end,val1,val2) values (2,'P',sysdate,to_date('12/12/12','DD/MM/YY'),3,2);

insert into product_promotion(product,promotion,price) values (1234567890,1,1.95);
insert into product_promotion(product,promotion,price) values (1434567890,1,0.95);

insert into supply_detail (product,supply,unit_price,amount) values (1434567890,5,3.00,30);
insert into supply_detail (product,supply,unit_price,amount) values (1234567890,7,1.00,30);

insert into orders_detail (product,orders,unit_price,amount) values (1434567890,2,3.50,30);
insert into orders_detail (product,orders,unit_price,amount) values (1234567890,1,1.20,50);