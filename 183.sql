# Write your MySQL query statement below

#Write an SQL query to report all customers who never order anything.


# select name as "Customers"
# from Customers A
# where A.id not in (Select customerId from Orders)

select name as "Customers"
from Customers A
left join (Select customerId from Orders)B
on A.id = B.customerId
where B.customerId is NULL