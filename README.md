# University-Database
I have created a University Database having relations, Department, Course, Student, Takes, Instructor, Teaches, Section and Advisor.
Then created a trigger to automatically insert grades to takes table whenever the credits in student table are updated.
After the completion of databse, Done some visualizations using multiple concepts available in MySQL.

## Attributes of relations - 
### 1. Department - 
Dept_name
Building
Budget

### 2. Course - 
Course_id
Title
Dept_name
Credits

### 3. Student - 
ID
Name
Dept_name
Total_cred

### 4. Takes - 
ID
Course_id
Sec_id
Semester
year
Grade

### 5. Instructor - 
