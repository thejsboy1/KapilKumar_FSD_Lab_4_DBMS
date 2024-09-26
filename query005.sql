

#Question-05

use ecommerce;

#select * from `order`;

SELECT 
    o.cus_id,
    o.ord_id,
    o.ORD_AMOUNT,
    o.ORD_DATE,
    sp.SUPP_PRICE,
    p.PRO_NAME
FROM
    `order` o
        INNER JOIN
    supplier_pricing sp
        INNER JOIN
    product p ON (o.PRICING_ID = sp.PRICING_ID
        AND sp.PRO_ID = p.PRO_ID)
WHERE
    o.CUS_Id = 2;

