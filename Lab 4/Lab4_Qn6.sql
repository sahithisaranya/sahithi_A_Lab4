#6)	Find the least expensive product from each category and
# print the table with category id, name, product name and price of the product
select C.CAT_ID as category_id,
C.CAT_NAME as category_name,
P.PRO_NAME as product_name, 
min(SP.SUPP_PRICE) as price_of_product 
from category as C
inner join product as P 
on P.CAT_ID=C.CAT_ID
inner join supplier_pricing as SP
on SP.PRO_ID=P.PRO_ID
group by P.PRO_NAME
order by SP.SUPP_PRICE