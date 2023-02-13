# Write your MySQL query statement below

# Write an SQL query to report the names of the customer that are not referred by the customer with id = 2.


select name 
from Customer
where referee_id <> 2 or referee_id is null
