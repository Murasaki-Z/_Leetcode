#Records with Salary less than 1000
SELECT emp.name,
       bon.bonus
FROM Employee emp
LEFT JOIN
  (SELECT *
   FROM Bonus) bon ON emp.empID = bon.empID
WHERE bon.bonus < 1000
  OR bon.bonus IS NULL