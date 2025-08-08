-- Use Database
use demo;

-- Demo Table
select * from emp;

-- MAX Function
-- Find the highest salary from the employee table.
  select  max(sal) from emp;
  
-- Display the maximum salary among employees whose job is 'Manager'.
  select max(sal) from emp where job='Manager';
  
-- MIN Function
-- Find the lowest salary from the employee table.
  select  min(sal) from emp;
  
  -- Display the maximum salary among employees whose job is 'Analyst'.
  select Min(sal) from emp where job='Analyst';
  
-- Avg Function
-- Find the average of the comm.
  select avg(comm) from emp;
  
-- Sum Function
-- Calculate the total salary of all employees.
  select sum(sal) from emp;
  
-- Calculate the total commission paid to all employees.
  select sum(comm) from emp;
  
-- count Function
-- Count the number of employees listed in the table.
  select count(ename) from emp;
  
-- Count how many employees have a commission recorded.
    select count(comm) from emp;
    

-- Group By Cluase
-- display highest salary given to employee in each designation.
select job, max(sal) from emp group by job;

-- display highest salary given to employee in each designation apart from analyst.
select job, max(sal) from emp where job !='analyst' group by job;

-- Having Clause
-- Display employee salary that are repeated.
select sal from emp group by sal having count(*) > 1;

-- Display employee designation that are repeated exactly twice.
select job from emp group by job having count(*) = 2;

  








