# WRITE your MySQL query STATEMENT below 
#WRITE an SQL query TO report if three line segments can form a triangle.


SELECT *,
       CASE
           WHEN x> 0
                AND y >0
                AND z> 0 THEN (CASE
                                   WHEN x+y > z
                                        AND x+z > y
                                        AND y+z > x THEN 'Yes'
                                   ELSE 'No'
                               END)
           ELSE 'No'
       END AS triangle
FROM Triangle