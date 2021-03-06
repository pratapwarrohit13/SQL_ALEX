/*
CTE  (common table expression)
*/

WITH CTE_EMPLOYEE AS 
(SELECT FIRSTNAME, LASTNAME, GENDER, SALARY,
COUNT(GENDER) OVER (PARTITION BY GENDER) AS TOTALGENDER,
AVG(SALARY) OVER (PARTITION BY GENDER) AS AVGSALARY
FROM SQLTutorial.dbo.EMPLOYEEDEMOGRAPHICS EMP
JOIN SQLTutorial.dbo.EMPLOYEESALARY SAL
ON	EMP.EMPLOYEID = SAL.EMPLOYEEID
WHERE SALARY > '45000'
)
SELECT *
FROM CTE_EMPLOYEE



WITH CTE_EMPLOYEE AS 
(SELECT FIRSTNAME, LASTNAME, GENDER, SALARY,
COUNT(GENDER) OVER (PARTITION BY GENDER) AS TOTALGENDER,
AVG(SALARY) OVER (PARTITION BY GENDER) AS AVGSALARY
FROM SQLTutorial.dbo.EMPLOYEEDEMOGRAPHICS EMP
JOIN SQLTutorial.dbo.EMPLOYEESALARY SAL
ON	EMP.EMPLOYEID = SAL.EMPLOYEEID
WHERE SALARY > '45000'
)
SELECT FIRSTNAME,AVGSALARY
FROM CTE_EMPLOYEE


