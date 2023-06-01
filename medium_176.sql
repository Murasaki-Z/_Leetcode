# Write your MySQL query statement below
#Write an SQL query to report the second highest salary from the Employee table. If there is no second highest salary, the query should report null.



WITH ranked_salaries AS (
  SELECT salary, RANK() OVER (ORDER BY salary DESC) AS rnk
  FROM (
    SELECT DISTINCT salary FROM Employee
  ) AS inner_table
)
SELECT CASE WHEN rnk = 2 THEN salary ELSE NULL END AS SecondHighestSalary
FROM ranked_salaries
ORDER BY SecondHighestSalary DESC
LIMIT 1; #Replace limit and distinct with rn if performance is not a conncern

#simpler solution -- check if salary < max(salary) limit 1 after order