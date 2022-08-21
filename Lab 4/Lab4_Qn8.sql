#8)	Display customer name and gender whose names start or end with character 'A'.
select C.CUS_NAME as customer_name,C.CUS_GENDER  as gender from customer as C
where C.CUS_NAME like 'A%' or C.CUS_NAME like '%A';