use edureka;

create table Emp_Details1(
Emp_Id int,
First_Name char(20),
Last_Name char(20),
Hire_Date date,
Job_Id int,
Dept int,
Salary numeric(25),
Mobile_No numeric(25)
);

select *from Emp_Details1;

insert into Emp_Details1 values(
1,'Hari','Gupta','2018/10/11',11,15,50000,9619046011
);

insert into Emp_Details1 values(
2,'Rani','Agrawal','2018/10/12',12,16,40000,1234567890
);
insert into Emp_Details1 values(
3,'Neha','Yadav','2024/10/11',13,17,25000,9223204225
);

insert into Emp_Details1 values(
1009,'Riccky','Lawrence','2024/11/12',14,18,30000,9619046012
);

insert into Emp_Details1 values(
1005,'Riccky','Lawrence','2024/11/12',14,18,28000,9619046012,1004
);


insert into Emp_Details1 values(
1007,'Riccky','Lawrence','2024/11/12',2,19,29000,9619046012,1007
);

insert into Emp_Details1 values(
1007,'Richa','Bhanu','2024/11/10',77,20,30000,9619046013,1008
);

insert into Emp_Details1 values(
1007,'Gunnu','Francee','2025/11/12',8,21,29500,9619046014,1008
);

update Emp_Details1 set Salary = 50000  where emp_id=1009;

update Emp_Details1 set MGR_Id = 1005  where emp_id=1009;

update Emp_Details1 set MGR_Id = 1001  where emp_id=1;

update Emp_Details1 set MGR_Id = 1002  where emp_id=2;

update Emp_Details1 set MGR_Id = 1003  where emp_id=3;

update Emp_Details1 set Emp_Id = 1008,MGR_Id = 1009  where First_Name ='Gunnu';

ALTER Table Emp_Details1 ADD MGR_Id INT;

select * from Emp_Details1;

delete from Emp_Details1 where Salary >=40000;

update Emp_Details1 set First_Name ='Hari', Last_Name ='Gupta' where MGR_id =1004;

select *from Emp_Details1 where Last_Name like 'B%'

select *from Emp_Details1 where Last_Name like 'F%'



----------------------------
select * from Emp_Details;

insert into Emp_Details values(
2,'Jyoti','Gupta','2018-10-11',12,16,5100,9619046);

insert into Emp_Details values(
3,'Scott','Miller','2018-10-12',13,17,5200,9619047);

insert into Emp_Details values(
4,'Martin','Arthur','2018-10-13',14,18,5300,9619048);


select from Emp_Details.Job_ID, Emp_Details1.First_Name
FROM
Emp_Details t1 JOIN Emp_Details1 t2
ON t1.Emp_Id = t2.MGR_Id;