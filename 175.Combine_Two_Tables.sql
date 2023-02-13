
# Write an SQL query to report the first name, last name, city, and state of each person in the Person table. If the address of a personId is not present in the Address table, report null instead.



SELECT A.firstName, A.lastName, B.city, B.state
FROM Person A
LEFT JOIN (SELECT * from Address)B
ON A.personId = B.personId