/*
ALIASING
*/

SELECT FIRSTNAME + ' '+ LASTNAME AS FULLNAME
FROM SQLTutorial.dbo.EMPLOYEEDEMOGRAPHICS

SELECT AVG(AGE) AS AVERAGEAGE
FROM SQLTutorial.dbo.EMPLOYEEDEMOGRAPHICS

SELECT DEMO.EMPLOYEID , SAL.SALARY
FROM SQLTutorial.dbo.EMPLOYEEDEMOGRAPHICS AS DEMO
JOIN SQLTutorial.dbo.EMPLOYEESALARY AS SAL
ON DEMO.EMPLOYEID = SAL.EMPLOYEEID

SELECT DEMO.EMPLOYEID,DEMO.FIRSTNAME,DEMO.LASTNAME, SAL.JOBTITLE,WARE.AGE
FROM SQLTutorial.dbo.EMPLOYEEDEMOGRAPHICS AS DEMO
LEFT JOIN SQLTutorial.dbo.EMPLOYEESALARY AS SAL
ON DEMO.EMPLOYEID = SAL.EMPLOYEEID
LEFT JOIN SQLTutorial.dbo.WareHouseEmployeeDemographics WARE
ON DEMO.EMPLOYEID = WARE.EmployeeID