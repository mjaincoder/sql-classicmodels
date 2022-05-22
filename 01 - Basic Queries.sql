
##############################
  01 - Basic SQL Commands
##############################

SQL Commands

# Create a database
/*
CREATE DATABASE [IF NOT EXISTS] database_name
*/
CREATE DATABASE monica;

# display all databases
SHOW DATABASES;

# Select a database
USE monica;

# Create a table
/*
CREATE TABLE [IF NOT EXISTS] table_name(  
    column_definition1,  
    column_definition2,  
    ........,  
    table_constraints  
);  
*/
# column_name data_type constraints
CREATE TABLE employees(
	e_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    e_name VARCHAR(30) NOT NULL,
    e_salary FLOAT NOT NULL,
    e_dept VARCHAR(5)
);

# Display all table names in a given database
SHOW TABLES;

# Describe the structure of a table
DESCRIBE employees;

# Insert data
INSERT INTO employees ( e_name, e_salary, e_dept) VALUES 
(  "Monica J", 1234.56, "Tech");

# Show the data
SELECT * FROM employees;

# Insert Multiple rows
INSERT INTO employees ( e_name, e_salary, e_dept) VALUES 
(  "Vaishnav K", 2345.56, "Acc"),
(  "Santosh S", 7432.45, "Tech"),
(  "Amreesh A", 4563.324, "IT");

# Insert the data without mentioning column names
INSERT INTO employees VALUES ( 5, "Shiva K", 3445.56, "IT");

# Clear the table
TRUNCATE Table employees;

# Remove the table
DROP TABLE employees;


