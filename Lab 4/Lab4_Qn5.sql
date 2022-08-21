#5)	Display the Supplier details who can supply more than one product.
select  S.SUPP_ID as supplier_id,
S.SUPP_NAME as supplier_name,
S.SUPP_CITY as supplier_city,
S.SUPP_PHONE as supplier_phone_number
from supplier as S
inner join supplier_pricing as SP 
on SP.SUPP_ID=S.SUPP_ID group by supplier_id;