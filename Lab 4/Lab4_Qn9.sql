#9)	Create a stored procedure to display supplier id, name, rating and Type_of_Service. 
#For Type_of_Service, If rating =5, print “Excellent Service”,
#If rating >4 print “Good Service”, 
#If rating >2 print “Average Service” else print “Poor Service”.
CREATE DEFINER=`root`@`localhost` PROCEDURE `ratingService`()
BEGIN
SELECT  S.SUPP_ID,S.SUPP_NAME,R.RAT_RATSTARS,
	CASE 
		WHEN R.RAT_RATSTARS=5 Then 'Excellent Service'
		WHEN R.RAT_RATSTARS>4 Then 'Good Service'
		WHEN R.RAT_RATSTARS>2 Then 'Average Service'
		ELSE 'Poor Service'
	End as Type_of_Service from rating as R 
    inner join `order` as O on O.ORD_ID=R.ORD_ID
    inner join supplier_pricing as SP on SP.PRICING_ID=O.PRICING_ID
    inner join supplier as S on SP.SUPP_ID=S.SUPP_ID;
END