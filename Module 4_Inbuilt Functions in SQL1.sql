/*Module 4: Inbuilt Functions in SQL*/

---Q1: Perform the following in SQL---- Determine the Count of rows satisfying certain condition ---
USE edureka;

select *from  Emp_Details1;

select COUNT(Emp_Id) from Emp_Details1;

select COUNT(DISTINCT Emp_Id) from Emp_Details1;


--- Determine average of a column ---

SELECT AVG(Salary) from Emp_Details1;

--Determine Sum of a column--

SELECT SUM(Salary) from Emp_Details1;


