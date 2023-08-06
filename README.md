# University-Database
I have created a University Database having relations, Department, Course, Student, Takes, Instructor, Teaches, Section and Advisor.
Then created a trigger to automatically insert grades to takes table whenever the credits in student table are updated.
After the completion of databse, Done some visualizations using multiple concepts available in MySQL.

## Attributes of relations - 
### 1. Department - 
Dept_name,
Building,
Budget

### 2. Course - 
Course_id,
Title,
Dept_name,
Credits

### 3. Student - 
ID,
Name,
Dept_name,
Total_cred

### 4. Takes - 
ID,
Course_id,
Sec_id,
Semester,
year,
Grade

### 5. Instructor - 
ID,
name,
Dept_name,
Salary

### 6. Teaches - 
ID, Course_id,
Sec_id,
Semester,
year

### 7. Section -
Course_id,
Sec_id,
Semester,
year,
Building,
Room_number,
Time_slot_id

### 8. Advisor
s_id,
i_id

## Files Uploaded -
### DDL.xlsx
This contains the data for the tables.
### schema.png
Shows the schema of the database generated using Reverse Engineering in MySQL Workbench
### University.sql
Contains SQL code to create dataset, tables and insert values in them.
### Trigger and update.sql
Contains SQL code to create a trigger that will automatically update the grades in 'takes' table when an update in credits is done in 'student' table.
### Questions.sql
Contains the variety of questions and code to the queries that I have answered.
### Questions Solutions.pdf
It is a .pdf file that contains the questions along with the output of the queries for every question.
