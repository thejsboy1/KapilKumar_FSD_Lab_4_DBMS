
/*
Question-04
*/
use ecommerce;

#SELECT * FROM ecommerce.supplier;


SELECT 
    C_O.cus_gender AS 'Gender',
    COUNT(C_O.cus_gender) AS 'NoOfCustomers'
FROM
    (SELECT 
        c.cus_id, c.cus_name, c.cus_gender
    FROM
        customer c
    INNER JOIN `order` o ON c.cus_id = o.cus_id
    WHERE
        o.ord_amount >= 3000
    GROUP BY c.cus_id) AS C_O
GROUP BY C_O.cus_gender;
