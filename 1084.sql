# WRITE your MySQL query STATEMENT below # WRITE an SQL query that reports the products that were ONLY sold IN the FIRST quarter OF 2019. That IS,
                                                                                                                                               BETWEEN 2019-01-01AND 2019-03-31 inclusive.
SELECT DISTINCT a.product_id,
                b.product_name
FROM Sales a
INNER JOIN
  (SELECT product_id,
          product_name
   FROM Product)b ON a.product_id = b.product_id
WHERE sale_date BETWEEN '2019-01-01' AND '2019-03-31'
  AND a.product_id NOT IN
    (SELECT product_id
     FROM sales
     WHERE sale_date NOT BETWEEN '2019-01-01' AND '2019-03-31')