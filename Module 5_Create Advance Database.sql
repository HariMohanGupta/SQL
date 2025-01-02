use edureka;

/*Module 5: Create Advance Database Objects */

--Q1: Execute the following in SQL --

--- Create Functions --

select * from Emp_Details1;

 CREATE FUNCTION ADDVALUE (@firstValue INT, @lastValue INT)
	   RETURNS INT
	   AS
	    BEGIN
		  RETURN (SELECT(@firstValue + @lastValue))
		END

		select dbo.ADDVALUE(7,8)


		--- Create Triggers ---DDL Trigger---
				
				Create trigger saftey

			    on database
				for 
				create_table,alter_table,drop_table
				as
				print'you can not create ,drop and alter table in this database'
				rollback;



	---- Create and Execute Stored Procedure ---

	SELECT *from Emp_Details1;

	CREATE proc dbo.uspGetDetail ------ using parameter--
	@emp_id int
	AS
	SELECT * from
	Emp_Details1
	where Emp_Id = @emp_id
	Go

	Exec dbo.uspGetDetail @emp_id =1007; 
				



	 