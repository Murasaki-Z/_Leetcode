# Write your MySQL query statement below
#Write an SQL query to report the second highest salary from the Employee table. If there is no second highest salary, the query should report null.





#Redshift compatible
# select SecondHighestSalary
# from (
# select RANK() OVER (ORDER BY salary DESC) as rnk, 
# # case when rnk = 2 then salary else null end as SecondHighestSalary
# from Employee
# )subq
# where SecondHighestSalary is not null

select case when rnk = 2 then salary else null end as SecondHighestSalary
from (
select *, RANK() OVER (ORDER BY salary DESC) as rnk
from Employee)subq
order by SecondHighestSalary desc
limit 1
