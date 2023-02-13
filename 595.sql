# Write your MySQL query statement below

#Write an SQL query to report the name, population, and area of the big countries.

select name, population, area from World
where area >= 3000000 or population >= 25000000