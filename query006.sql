

#Question-06

#select * from supplier;
#select * from supplier_pricing;

use ecommerce;

SELECT 
    s.*, NoOfProducts_Supplied
FROM
    supplier s
        INNER JOIN
    (SELECT 
        supp_id, COUNT(pro_id) AS NoOfProducts_Supplied
    FROM
        supplier_pricing
    GROUP BY supp_id
    HAVING NoOfProducts_Supplied > 1)
AS sp ON s.supp_id = sp.supp_id;

