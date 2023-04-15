SELECT MAX(salary) AS SecondHighestSalary
FROM (
SELECT salary, DENSE_RANK() over(ORDER BY salary DESC) AS r
FROM Employee) result
WHERE r=2;
