

#Question-10

/*
*
* SQL Query used is displayed in the following
* Then the Call to Stored Procedure is made
*
*/

/*
SELECT 
    SUPP_ID,
    SUPP_NAME,
    AverageRating,
    CASE
        WHEN AverageRating = 5 THEN 'Excellent Service'
        WHEN AverageRating > 4 THEN 'Good Service'
        WHEN AverageRating > 2 THEN 'Average Service'
        ELSE 'Poor Service'
    END AS ServiceType
FROM
    (SELECT 
        s.SUPP_ID, s.SUPP_NAME, AVG(r.RAT_RATSTARS) AverageRating
    FROM
        rating r
    INNER JOIN `order` o
    INNER JOIN supplier_pricing sp
    INNER JOIN supplier s ON (r.ORD_ID = o.ORD_ID
        AND o.PRICING_ID = sp.PRICING_ID
        AND sp.SUPP_ID = s.SUPP_ID)
    GROUP BY supp_id) AS R_O_SP_S;
*/

call ecommerce.DisplaySupplierRatingDetails();


