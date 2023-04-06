SELECT name
FROM SalesPerson
WHERE sales_id NOT IN
    (SELECT sales_id
     FROM orders
     LEFT JOIN company ON Rrders.com_id = Company.com_id
     WHERE lower(Company.name) = 'red')