CREATE TABLE emp_details(
name VARCHAR(50), 
email VARCHAR(50), 
password VARCHAR(50), 
dob date, 
gender VARCHAR(10), 
city VARCHAR(20), 
college VARCHAR(70), 
clge_per int, 
degree VARCHAR(30), 
branch VARCHAR(50), 
completion int, 
tenth int, 
twelve int, 
experience int, 
active varchar(3), 
communication varchar(3), 
creativity VARCHAR(3),
decision  VARCHAR(3), 
critical VARCHAR(3), 
computer VARCHAR(3), 
leadership VARCHAR(3));

/*Alter ing constraint to the emp table*/
ALTER TABLE EMP_DETAILS 
ADD CONSTRAINT uk_email UNIQUE(email)
/*adding not to column*/
ALTER TABLE EMP_DETAILS  ALTER COLUMN NAME SET NOT NULL;