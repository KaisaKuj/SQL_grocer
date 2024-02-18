
-- SQL query: Find all the original product vendor informations for products that were sold to customer number 111000.
-- This query accessess data from related databases and proves that the database design is viable.
-- First, we take customerNumber 111000 from sale table and join sale table with product table, join
-- product table with purchase table and finally, join purchase table with vendor table.
-- The query returns two vendors (vendorId:s 102 and 103).

SELECT DISTINCT vendor.*
FROM sale, product, purchase, vendor
WHERE sale.ProductNum = product.productNumber AND
product.productNumber = purchase.productNumber AND
purchase.vendorId = vendor.vendorId AND
sale.customerNumber = 111000;