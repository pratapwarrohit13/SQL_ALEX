/*
Temp Tables
*/

CREATE TABLE #temp_employee (
employeeid int,
jobtitle varchar(100),
salary int
)

select * from #temp_employee

insert into #temp_employee values
('1001','HR','45000')

insert into #temp_employee
select * from
SQLTutorial.dbo.EMPLOYEESALARY

DROP TABLE IF EXISTS #TEMP_EMPLOYEE2
CREATE TABLE #TEMP_EMPLOYEE2 (
JOBTITLE VARCHAR(50),
EMPLOYEESPERJOB INT,
AVGAGE INT,
AVGSALARY INT
)

INSERT INTO #TEMP_EMPLOYEE2
SELECT JOBTITLE,COUNT(JOBTITLE),AVG(AGE),AVG(SALARY)
FROM SQLTutorial.DBO.EMPLOYEEDEMOGRAPHICS EMP
JOIN SQLTutorial.dbo.EMPLOYEESALARY SAL
ON EMP.EMPLOYEID = SAL.EMPLOYEEID
GROUP BY JOBTITLE

SELECT * FROM #TEMP_EMPLOYEE2

