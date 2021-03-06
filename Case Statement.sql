/*
Case Statement
*/

SELECT FIRSTNAME,LASTNAME,AGE,
CASE
WHEN AGE > 30 THEN 'OLD'
ELSE 'YOUNG'
END
FROM SQLTutorial.dbo.EMPLOYEEDEMOGRAPHICS
WHERE AGE IS NOT NULL
ORDER BY AGE

SELECT FIRSTNAME,LASTNAME,AGE,
CASE
WHEN AGE > 30 THEN 'OLD'
WHEN AGE BETWEEN 27 AND 30 THEN 'Young'
ELSE 'Baby'
END
FROM SQLTutorial.dbo.EMPLOYEEDEMOGRAPHICS
WHERE AGE IS NOT NULL
ORDER BY AGE

SELECT FIRSTNAME,LASTNAME,AGE,
CASE
WHEN AGE = 38 THEN 'Stanley'
WHEN AGE > 30 THEN 'OLD'
ELSE 'Baby'
END
FROM SQLTutorial.dbo.EMPLOYEEDEMOGRAPHICS
WHERE AGE IS NOT NULL
ORDER BY AGE


SELECT FIRSTNAME,LASTNAME,JOBTITLE,SALARY,
CASE
WHEN JOBTITLE = 'SALESMAN' THEN SALARY + (SALARY * .10)
WHEN JOBTITLE = 'ACCOUNTANT' THEN SALARY + (SALARY * .05)
WHEN JOBTITLE = 'HR' THEN SALARY + (SALARY * .00001)
ELSE SALARY + (SALARY * .03)
END AS SALARYAFTERRISE
FROM SQLTutorial.dbo.EMPLOYEEDEMOGRAPHICS
JOIN SQLTutorial.dbo.EMPLOYEESALARY
ON EMPLOYEEDEMOGRAPHICS.EMPLOYEID = EMPLOYEESALARY.EMPLOYEEID

