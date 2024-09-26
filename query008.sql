

#Question-08

use ecommerce;

SELECT 
    p.pro_id, p.pro_name
FROM
    `order` o
        INNER JOIN
    supplier_pricing sp
        INNER JOIN
    product p ON (o.PRICING_ID = sp.PRICING_ID
        AND sp.PRO_ID = p.PRO_ID)
WHERE
    o.ORD_DATE >= '2021-10-05'
GROUP BY p.PRO_ID;

