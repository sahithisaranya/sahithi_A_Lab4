#3)	Display the total number of customers based on gender 
# who have placed orders of worth at least Rs.3000.
select count(customer_id) as customer_count, gender from(
select distinct c.CUS_ID as customer_id,
c.CUS_NAME as customer_name,
c.CUS_GENDER as gender
from customer as c 
inner join `order` as o
on c.CUS_ID=o.CUS_ID
where o.ORD_AMOUNT>=3000) as sub group by gender;