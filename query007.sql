

#Question-07
#Find the least expensive product from each category and print the table with category id, name, product name and price of the product

use ecommerce;

#select * from category;
#select * from product;
#select * from supplier;
#select * from supplier_pricing;

/*
#Initial Query
SELECT 
    c.cat_id,
    c.cat_name,
    p.pro_name,
    MIN(sp.supp_price) AS price
FROM
    category AS c
        INNER JOIN
    product AS p ON c.cat_id = p.cat_id
        INNER JOIN
    supplier_pricing AS sp ON p.pro_id = sp.pro_id
GROUP BY c.cat_id , c.cat_name , p.pro_name
ORDER BY c.cat_id , price;
*/


#Final Query

SELECT 
    spp.cat_id,
    spp.cat_name,
    spp.pro_name AS 'Product Name',
    MIN(spp.lowest_price) AS least_price
FROM
    (SELECT 
        c.cat_id,
            c.cat_name,
            p.pro_name,
            MIN(sp.supp_price) AS lowest_price
    FROM
        category c
    INNER JOIN product p ON c.cat_id = p.cat_id
    INNER JOIN supplier_pricing sp ON p.pro_id = sp.pro_id
    GROUP BY c.cat_id , c.cat_name , p.pro_name) AS spp
GROUP BY spp.cat_id;
