

# Write your MySQL query statement below

# Write an SQL query to find the employees who earn more than their managers.

# Return the result table in any order. --seems it wants me to rename name as employee


SELECT A.name as "Employee"
FROM Employee A
INNER JOIN (SELECT * FROM Employee)B
on A.managerId = B.id and A.salary > b.salary