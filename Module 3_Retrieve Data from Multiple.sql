use edureka;

select * from Emp_Details;

Alter Table Emp_Details ADD MGR_ID INT;

update Emp_Details set MGR_ID = 4

update Emp_Details set MGR_ID = 3 where Emp_Id =2;

update Emp_Details set MGR_ID = 2 where Emp_Id =3;

update Emp_Details set MGR_ID = 4 where Emp_Id =1;


select * from Emp_Details1;   ----Retrieve data from table using self-join-----

select t1.First_Name AS Employee_name,t2.MGR_Id
from Emp_Details1 AS t1
JOIN Emp_Details1 As t2
ON t2.Emp_Id = t1.MGR_Id


select * from Emp_Details;

select t1.First_Name AS Employee_name,t2.MGR_ID
from Emp_Details AS t1
JOIN Emp_Details As t2
ON t2.Emp_Id = t1.MGR_ID 


select t1.First_Name as Employee, t2.Job_ID   ---  Retrieve data from table using self-join---
FROM Emp_Details As t1
JOIN Emp_Details AS t2
ON t2.Emp_Id = t1.Job_ID

create table dept1(
Dept_No int,
Dept_Name Char(25),
Dept_Location Char(25)
);

insert into dept1 values(
1,'Accounts','Mumbai');

insert into dept1 values(
2,'HR','AMD');

insert into dept1 values(
3,'HR','DELHI');

insert into dept1 values(
4,'OPERATION','BNG');

select *from dept1;

select *from Emp_Details

Select Emp_Details.Emp_Id,dept1.Dept_Name  ---Inner Join ---
from Emp_Details
INNER JOIN dept1
ON Emp_Details.Emp_Id = dept1.Dept_No
ORDER BY Emp_Details.Emp_Id;


Select Emp_Details.Emp_Id,Emp_Details.First_Name,dept1.Dept_Name,dept1.Dept_Location  ---Left  Join ---
from Emp_Details
LEFT OUTER JOIN dept1
ON Emp_Details.Emp_Id = dept1.Dept_No
ORDER BY Emp_Details.Emp_Id desc; 

select Emp_Details.Emp_Id,Emp_Details.Last_Nme,dept1.Dept_Name,dept1.Dept_Location  ---Right Join--
from Emp_Details
RIGHT OUTER JOIN dept1
ON Emp_Details.Emp_Id = dept1.Dept_No
ORDER BY Emp_Details.Emp_Id;

Select Emp_Details.Emp_Id,dept1.Dept_No,dept1.Dept_Name
from Emp_Details
CROSS JOIN dept1
ORDER BY Emp_Details.Emp_Id;







