# Write your MySQL query statement below

# Write an SQL query to report all the duplicate emails.

# Return the result table in any order.

select distinct email as Email from (
select *, row_number() over (partition by email) as rownum
from Person
)A
where rownum > 1