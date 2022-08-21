#4)	Display all the orders along with product name ordered by a customer having Customer_Id=2
select C.CUS_ID as customer_id,
C.CUS_NAME as customer_name,
O.ORD_ID as order_id,
O.ORD_AMOUNT as order_amount,
O.ORD_DATE as date_of_order,
P.PRO_NAME as product_name 
from `order` as O 
inner join supplier_pricing as SP
on O.PRICING_ID=SP.PRICING_ID
inner join product as P
on P.PRO_ID=SP.PRO_ID
inner join customer as C
on C.CUS_ID=O.CUS_ID 
where C.CUS_ID=2;