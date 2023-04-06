# Write your MySQL query statement below

select * from Cinema
where lower(description) not like '%boring%' and mod(id, 2) <> '0'
order by 4 desc
