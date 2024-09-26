

#Question-09

use ecommerce;

#select * from customer;

SELECT 
    cus_id, cus_name
FROM
    customer
WHERE
    cus_name LIKE 'A%'
    OR 
    cus_name LIKE '%A';
