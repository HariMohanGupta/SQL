/*Certification Project */
/* Problem Statement: Execute the following set of queries */
/* DATA DEFINITION LANGUAGE (DDL) */

/* AIM: Create a database to implement DDL basic commands using the Employee 
database as given below. */


CREATE DATABASE EMPLOYEE;

USE EMPLOYEE;

/* 1.   Create department table with following columns.
		Dept_id -- Data Type: Integer Primary key, 
		D_Name --Data Type: NVARCHAR (100) Not null, 
		Contact_no -- Data Type: Integer Unique   */

		Create table department(
		Dept_id INT Primary Key,
		D_Name NVARCHAR(100) NOT NULL,
		Contact_no INT Unique
		);

		select * from department;



		/* 2.	Create employee table with following columns
				Emp_id -- Data Type: Integer (Primary Key),
				Dept_id -- Data Type: Integer (Foreign Key),--Foreign Key is not accepted-- 
				Emp_name --Data Type: NVARCHAR (100), 
				Designation --Data Type: NVARCHAR (100) 
				Salary -- Data Type: Money */


				Create table employee(
				Emp_id INT Primary Key,
				Dept_id INT,
				Emp_name NVARCHAR(100),
				Designation NVARCHAR(100),
				Salary Money
				);

				select *from employee;


				/*3. ADD A NEW CLOUMN IN DEPARTMENT TABLE
						Column – City
							Data Type – NVARCHAR (50) */

					ALTER TABLE department ADD City NVARCHAR(50);


		/* 4. CHANGE THE DATATYPE OF SALARY TO CHAR(10) IN EMPLOYEE
				Data Type: Change from Money to Char (10); */

				ALTER TABLE employee Alter Column Salary char(10); 


				/* DATA MANIPULATION LANGUAGE (DML) * ?



		/* 5. DELETE THE ‘CITY’ COLUMN FROM THE DEPARTMENT TABLE 
				Column: City */

		ALTER TABLE department drop column City;


		/* 6. RENAME A COLUMN(D_NAME) IN DEPARTENT TABLE to (Dept_NAME) */

		ALTER TABLE department  RENAME D_Name to Dept_NAME;

		select *from department;

		exec sp_rename 'department.D_Name','Dept_NAME','Column';  --- Rename the Column Name ---
		


		/*DATA MANIPULATION LANGUAGE (DML) */

		--Insert Values in employee table as per table below.--

		-- First Thing in table Emp_Id are showing as character we also change Primary and INT */

		ALTER TABLE employee drop PK__employee__263E2DD39E0C4B18;

		Select *from employee;

		ALTER TABLE employee alter column Emp_id char(10);

		ALTER TABLE employee alter column Dept_id char(10);

		ALTER TABLE employee alter column Salary numeric(10);

		ALTER TABLE employee ADD Contact_No character varying(10);
		ALTER TABLE employee ADD City character varying(20);

		Insert into employee values(
		'emp-1','dep-1','S Ahmad','Sales Mgr',50000,'0110','New Delhi');

		Insert into employee values(
		'emp-2','dep-2','Anand','Senoir Mgr',40000,'0111','New Delhi');

		Insert into employee values(
		'emp-3','dep-3','Aruna','Accounts Mgr',45000,'0112','New Delhi');

		Insert into employee values(
		'emp-4','dep-3','Alpes','Accountant',35000,'0113','Banglore');

		Insert into employee values(
		'emp-5','dep-1','Monica','Incharge',25000,'0114','Noida');

		Insert into employee values(
		'emp-6','dep-1','Harish','Sales Man',15000,'0115','Banglore');


		--7. Update the Contact_No of employee who stays in ‘Bangalore’ and id = 6  --

		
		update employee set Contact_No ='9619046' where Emp_id = 'emp-6' AND CITY ='Banglore';

		-- 8. Select given selective columns from employee table.
			- --- EMP_ID EMP_NAME  DESIG --

			select Emp_id,Emp_name,Designation from employee;


			-- 9. Select all details of employee whose salary is greater than 30000 --

			select *from employee  where Salary >30000;


	-- 10. Select details of employee whose salary is between 15000 and 30000 --

	Select * from employee where Salary between 15000 AND 30000;

	-- 11. Select * from employee who lives in ‘Bangalore’ or ‘New Delhi’ --

	select *from employee where City ='Banglore';

	select *from employee where City ='New Delhi'

	-- 12. Select * from employee who do not stay in cities ‘Bangalore’ and ‘New Delhi’ --

	Select * from employee where City not in ('Banglore','New Delhi');


	-- 13. Select details of employee whose name starts with character ‘A --

	Select *from employee where Emp_name like 'A%';

	-- 14. Arrange the details of employee in descending order of their salary. -

	Select *from employee ORDER BY Salary DESC;


	-- 15. Retrieve the average salary of employee per department. ---


	Select AVG(Salary) from employee;


	---16. Get the details of Employee( dept_id, Salary) and its average salary whose 
				-- average salary is greater than 30000 ---


		select dept_id,Salary from employee
		Where Salary > (select AVG(Salary) from employee);


		/* JOINS, STORED PROCEDURE AND VIEW */

		/*AIM: Create a Company and a Dept Database and solve the various join operations.
			Step1. Create Company Table 
			Columns
			a. Emp_id – Data Type Integer
				Name NVARCHAR (50), 
				Age – Data Type: Integer, 
				Address – Data Type: NVARCHAR (50),
				Salary – Data Type: Numeric (8, 2), 
				Join date – Date Type: Date) */

				CREATE TABLE Company(
				Emp_id INT,
				Emp_Name NVARCHAR(50),
				Age Int,
				Address NVARCHAR(50),
				Salary Numeric(8,2),
				Join_date date
				);


				Select *from Company;

				Insert into Company Values(
				1,'PAUL',32,'CALIFORNIA',20000.00,'2001-07-13');

				Insert into Company Values(
				3,'ALLEN',23,'NORWAY',20000.00,'');

				Insert into Company Values(
				4,'DAVID',25,'RICHMOND',65000.00,'2010-10-25');

				Insert into Company Values(
				5,'MARK',27,'TEXAS',35000.00,'2015-11-02');

					Insert into Company Values(
				2,'TEDDY',25,'LOS VEGAS',0,'2013-09-01');

				/* Step3. Create Dept Table
					Columns 
						a. Id – Data Type: Integer, 
						b. Dept -- Data Type: NVARCHAR(20)
						c. emp_id – Data Type: Integer */

						CREATE TABLE Dept(
						Id INT,
						Dept NVARCHAR(20),
						emp_id INT
						);

						Select *from Dept;

						INSERT INTO Dept VALUES(
						1,'IT BILLING',1
						);

						INSERT INTO Dept VALUES(
						2,'ENGINEERING',2
						);

						INSERT INTO Dept VALUES(
						3,'FINANCE',41
						);


					/* 17. Query1. Fetch following details for employee with id = 2 
					Emp_Id
					Name
					Dept 
					Dept_Id
					Age
					Salary */
					Select * from EMPLOYEE;

					Select EMPLOYEE.Emp_id,EMPLOYEE.Emp_name,Dept.Dept,Dept.Id,EMPLOYEE.Salary
					from EMPLOYEE,Dept
					WHERE EMPLOYEE.Salary =40000
					ORDER BY EMPLOYEE.Emp_id;



					/* 18.Create a stored procedure to fetch following columns from Company and 
							Dept2 table based on a given emp id.
							Emp_Id
							Name
							Dept , 
							Dep_Id, 
							Age
							Salary */

						create proc dbo.getDetailsfrom7  ---using MULTIPLE PARAMETER---

						@Emp_Id int= Null,
						@Emp_Name NVARCHAR (25) = Null,
						@AGE INT = Null,
						@Salary int

						AS
						SELECT * from Company
						WHERE 
						Emp_id = @Emp_Id AND
						Emp_name = @Emp_Name AND 
						Age = @AGE AND
						Salary = @Salary
						GO 
						
						
						
						Exec dbo.getDetailsfrom7 @Emp_Id =2,@Emp_Name ='Paul',@Salary=40000

						Select *from Company;


						create proc dbo.getDetailsfrom6  ---using MULTIPLE PARAMETER---

						@Dept_id int= Null,
						@Dept_Name NVARCHAR (25) = Null
						
						AS
						SELECT * from Dept
						WHERE 
						Id = @Dept_id AND
						Dept = @Dept_Name 
						GO 

						EXEC dbo.getDetailsfrom6 @Dept_id =3 , @Dept_Name ='FINANCE'
						

						Select * from Dept;



					/*19.Create a view to fetch the details of employee with following columns
						Emp_Id
						Name
						Dept , 
						Dep_Id, 
						Age
						Salary */

						Select *from Dept;
						Select *from Company;
						CREATE VIEW Emp_Details 
						AS 
						
						Select Company.Emp_id,Company.Emp_Name,Dept.Dept,Dept.Id,Company.Age,Company.Salary
						FROM Company,Dept
						WHERE Company.Emp_id = Dept.emp_id
						ORDER BY Company.Emp_id

						---  Both the same Result ---
						
						Select Company.Emp_id,Company.Emp_Name,Dept.Dept,Dept.Id,Company.Age,Company.Salary
						FROM Company
						INNER JOIN Dept
						ON Company.Emp_id = Dept.emp_id
						ORDER BY Company.Emp_id
						