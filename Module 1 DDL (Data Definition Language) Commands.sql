Create database edureka;

create table employee(
emp_id numeric(4),
first_name varchar(25),
last_name varchar(25),
mgr_id numeric(4),
hire_date date,
job_id numeric(4),
dept_no numeric(5)
);

ALTER TABLE employee ADD salary numeric(10,3);

ALTER TABLE employee drop column mgr_id;

ALTER TABLE employee ALTER column first_name varchar (40);

#DROP TABLE employee;#



ALTER TABLE employee ALTER COLUMN emp_id numeric not null;


ALTER TABLE employee
ADD CONSTRAINT emp_primarykey PRIMARY KEY (emp_id);  #add_the_primary_key#

ALTER TABLE employee ALTER COLUMN first_name varchar not null;

ALTER TABLE employee ALTER COLUMN last_name varchar not null;

ALTER TABLE employee ADD phone_numeric varchar(2) unique;




CREATE TABLE employee2(
emp_id numeric(18) primary Key not null,
mgr_id numeric(5),
pin numeric(6)
);


ALTER TABLE employee2    
 ADD CONSTRAINT fk_emmplyee_id
	FOREIGN KEY (emp_id)
	REFERENCES employee (emp_id)


ALTER TABLE employee2 alter column pin numeric not null;


Alter TAble employee2 DROP column pin;


create VIEW VW_EMPLOYEE as select *from employee;




