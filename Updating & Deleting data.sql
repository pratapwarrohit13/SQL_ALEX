/*
UPDATING/DELETING DATA
*/

SELECT *
FROM SQLTutorial.dbo.EMPLOYEEDEMOGRAPHICS



UPDATE SQLTutorial.dbo.EMPLOYEEDEMOGRAPHICS
SET EMPLOYEID = 1012
WHERE FIRSTNAME = 'Holly' and LASTNAME = 'Flax'


UPDATE SQLTutorial.dbo.EMPLOYEEDEMOGRAPHICS
SET AGE = 31, GENDER = 'Female'
WHERE FIRSTNAME = 'Holly' and LASTNAME = 'Flax'


DELETE FROM SQLTutorial.dbo.EMPLOYEEDEMOGRAPHICS
WHERE EMPLOYEID = 1005


SELECT * 
FROM SQLTutorial.dbo.EMPLOYEEDEMOGRAPHICS
WHERE EMPLOYEID = 1004