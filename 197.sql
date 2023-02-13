# Write your MySQL query statement below

# Write an SQL query to find all dates' Id with higher temperatures compared to its previous dates (yesterday).


SELECT B.id
from Weather A
inner join (select * from Weather)B
on DATE_ADD(A.recordDate,INTERVAL 1 DAY) = B.recordDate
and A.temperature < B.temperature