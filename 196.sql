# Please write a DELETE statement and DO NOT write a SELECT statement.
# Write your MySQL query statement below

# Write an SQL query to delete all the duplicate emails, keeping only one unique email with the smallest id. Note that you are supposed to write a DELETE statement and not a SELECT one.




DELETE a
FROM Person a, Person b
WHERE 
      a.Email = b.Email 
AND
      a.Id > b.Id;