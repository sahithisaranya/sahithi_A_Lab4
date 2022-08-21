#7)	Display the Id and Name of the Product ordered after “2021-10-05”.
select P.PRO_ID as product_id,
P.PRO_NAME as product_name,
O.ORD_DATE as order_date 
from product as P
inner join supplier_pricing as SP
on SP.PRO_ID=P.PRO_ID
inner join `order` as O
on O.PRICING_ID=SP.PRICING_ID
where O.ORD_DATE>'2021-10-05';