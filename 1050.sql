# Write your MySQL query statement below

# Write a SQL query for a report that provides the pairs (actor_id, director_id) where the actor has cooperated with the director at least three times.



select actor_id, director_id 
from 
(
  select actor_id, director_id, count(*) as cn
  from ActorDirector
  group by 1, 2
)A
where cn >= 3
