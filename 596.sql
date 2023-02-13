# Write your MySQL query statement below

# Write an SQL query to report all the classes that have at least five students.



select class
from 
(
    select class, count(student) as cntt
    from Courses
    group by class
)A
where cntt >= 5