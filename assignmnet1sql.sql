create table EmployeeDetails(empid int,fullname text,managerid int,dateofjoining date,city text );
create table EmployeeSalary(empid int,Project varchar(20),salary int,variable int );
select * from EmployeeDetails;
select * from EmployeeSalary;
insert into EmployeeDetails(empid,fullname,managerid,dateofjoining,city)values (101,'varun',101,current_date,'delhi'),(102,'vipul',103,current_date,'pune'),(104,'ram',101,current_date,'chennai');
insert into EmployeeSalary(empid,Project,salary,variable)values (101,'p1',8000,200),(102,'p2',10000,8000),(104,'p1',12000,1000);


select empid,fullname from EmployeeDetails where managerid=101;
select count(*) from EmployeeSalary where project='p1';
select max(salary),min(salary),avg(salary)from EmployeeSalary;
select empid from EmployeeSalary where salary between 10000 and 15000;
select (salary+variable) as total_salary from EmployeeSalary ;
select empid from EmployeeDetails where empid in (select empid from EmployeeSalary);
update EmployeeDetails set fullname=UPPER(fullname),city=LOWER(city);
SELECT * from EmployeeDetails;
select project,count(empid) from EmployeeSalary group by(project) order by count(empid) desc;
select * from EmployeeSalary where mod(empid,2)<>0;
SELECT Salary FROM EmployeeSalary Emp1
WHERE 2 = (SELECT COUNT( DISTINCT ( Emp2.Salary ) )FROM EmployeeSalary Emp2 WHERE Emp2.Salary > Emp1.Salary);



