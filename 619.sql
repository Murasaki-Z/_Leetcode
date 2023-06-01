#Write an SQL query to report the largest single number. If there is no single number, report null.


SELECT CASE
           WHEN count(*) = 0 THEN NULL
           ELSE num
       END AS num
FROM
  (SELECT num,
          count(*) AS occurences
   FROM MyNumbers
   GROUP BY num HAVING occurences = 1
   ORDER BY num DESC)A LIMIT 1