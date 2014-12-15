select count(*) from client,orders_detail,orders,product,person
where orders_detail.PRODUCT = product.isbn
and orders_detail.orders = orders.ORDER_ID
and orders.client = client.person
and client.PERSON = person.CITIZEN_CARD
and product.name = 'Bananas';

select count(*) from supply 
where DATE_SUPPLY >= TO_DATE('01-01-2012','DD-MM-YYYY')
and DATE_SUPPLY < TO_DATE('31-12-2012','DD-MM-YYYY');

select count(*) from product 
where price < 3.00;

select product.name 
from supply_detail,supply,supplier,person,product
where supply_detail.supply=supply.SUPPLY_ID
and supply.SUPPLIER = supplier.supplier_id
and supplier.PERSON = person.CITIZEN_CARD
and supply_detail.product = product.isbn
and person.name = 'José Luís';

select order_id,date_shipped,shipping,client from orders 
where DATE_ORDER >= TO_DATE('01-01-2013','DD-MM-YYYY')
and DATE_ORDER < TO_DATE('31-12-2013','DD-MM-YYYY');

select promotion_id, promotion_type, date_beginning, date_end, val1,val2
from promotion
where DATE_BEGINNING >= TO_DATE('01-12-2014','DD-MM-YYYY')
and DATE_END < TO_DATE('31-12-2014','DD-MM-YYYY');