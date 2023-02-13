# Write your MySQL query statement below

# select distinct customer_number 
# from (
#     select 
#     customer_number
#     , rank() over (order by order_number desc) as rnk
#     from Orders
#     )A
# where rnk = 1

select customer_number 
from 
(
    select customer_number, count(order_number) as cntt 
    from Orders
    group by customer_number
)A
where cntt =
(
    select cntt from 
    (
        select customer_number, count(order_number) as cntt
        from Orders
        group by customer_number
        order by cntt desc
        limit 1
    )B
)