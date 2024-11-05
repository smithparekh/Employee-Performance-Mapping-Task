Create database employee

Show databases;
Use employee;

Select EMP_id, FIRST_NAME, LAST_NAME, GENDER, DEPT 
from emp_record_table;

Select EMP_id, FIRST_NAME, LAST_NAME, GENDER, DEPT, EMP_RATING
from emp_record_table where EMP_RATING < 2;

Select EMP_id, FIRST_NAME, LAST_NAME, GENDER, DEPT, EMP_RATING
from emp_record_table where EMP_RATING > 4;

Select EMP_id, FIRST_NAME, LAST_NAME, GENDER, DEPT, EMP_RATING
from emp_record_table where EMP_RATING between 2 and 4;

Select concat(FIRST_NAME,' ', LAST_NAME) AS NAME from emp_record_table
where DEPT = 'Finance';

Select * from emp_record_table;

Select *, count(MANAGER_ID) from emp_record_table
where MANAGER_ID is not null group by MANAGER_ID;

Select * from emp_record_table where DEPT = 'healthcare'
UNION
Select * from emp_record_table where DEPT = 'finance';

Select EMP_ID, FIRST_NAME, LAST_NAME, ROLE, DEPT, EMP_RATING, 
max(EMP_RATING)
from emp_record_table group by DEPT;

Select * from emp_record_table
INNER join
(select ROLE,max(SALARY) as MaxSalary, min(SALARY) as MinSalary
from emp_record_table group by ROLE) AS SalaryEMP;

Select *, dense_rank() over (order by EXP desc)
from emp_record_table;
 
create view Employee_View as
select * from emp_record_table where SALARY>6000;
 
select * from Employee_View;

Select * from emp_record_table
where EMP_ID in (
Select EMP_ID from emp_record_table
where EXP>10
);

DELIMITER &&
create procedure sp_exp()
begin
Select * from emp_record_table where EXP>3;
end &&
Call sp_exp();

Select * from data_science_team
DELIMITER $$
create function J_PROF (EXP INT)
returns varchar (25)
deterministic
begin
declare J_PROF varchar(25);
IF EXP <=2 THEN
SET J_PROF = 'JUNIOR DATA SCIENTIST';
elseif (EXP between 2 AND 5) THEN
SET J_PROF = 'ASSOCIATE DATA SCIENTIST';
elseif (EXP between 5 AND 10) THEN
SET J_PROF = 'SENIOR DATA SCIENTIST';
elseif (EXP between 10 AND 12) THEN
SET J_PROF = 'LEAD DATA SCIENTIST';
elseif (EXP between 10 AND 12) THEN
SET J_PROF = 'MANAGER';
END IF;
return (J_PROF);
END$$
DELIMITER ;

SELECT *, J_PROF (EXP) FROM data_science_team;

Explain Select * from emp_record_table
where FIRST_NAME = 'ERIC';
Select * from emp_record_table
where FIRST_NAME = 'ERIC';
CREATE INDEX EMP_FIRST_NAME ON emp_record_table (FIRST_NAME);

select *,(Select Salary) + (SALARY*.05)*EMP_RATING as Including_bonus
FROM emp_record_table;

Select *, AVG(SALARY) from emp_record_table
group by COUNTRY;
Select *, AVG(SALARY) from emp_record_table
group by CONTINENT;
