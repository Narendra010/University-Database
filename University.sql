/*create database univeristy;
use university;
create table Department (
    Dept_name char(30),
    Building varchar(5),
    Budget NUMERIC(12,0),
    primary key(Dept_name)
	);
create table Instructor (
	ID integer,
    name char(20) not null,
    Dept_name char(30),
    Salary NUMERIC(10,0),
    primary key(ID),
    foreign key(Dept_name) references Department(Dept_name)
	);

create table Student (
	ID integer,
    Name char(30) not null,
    Dept_name char(30),
    Total_cred numeric(6,0),
    primary key(ID),
    foreign key(Dept_name) references Department(Dept_name)
	) ;


create table Course (
	Course_id char(8),
    Title varchar(30) not null,
    Dept_name char(30),
    Credits numeric(5,0),
    primary key(Course_id),
    foreign key(Dept_name) references Department(Dept_name)
	);


create table Section (
	Course_id char(8),
    Sec_id varchar(5),
    Semester numeric(4,0),
    year int,
    Building varchar(10),
    Room_number varchar(6),
    Time_slot_id varchar(20),
    primary key(Course_id,Sec_id,Semester,year),
    foreign key(Course_id) references Course(Course_id)
	);

create table Takes (
	ID int,
    Course_id varchar(8),
    Sec_id char(2),
    Semester numeric(2,0),
    year int,
    Grade char(5),
    foreign key(ID) references Student(ID),
    foreign key(Course_id,Sec_id,Semester,year) references Section(Course_id,Sec_id,Semester,year)
);

create table Teaches (
    ID int,
    Course_id varchar(8),
    Sec_id char(3),
    Semester numeric(2,0),
    year int,
    foreign key(ID) references Instructor(ID),
    foreign key(Course_id,Sec_id,Semester,year) references Section(Course_id,Sec_id,Semester,year)
	);

create table Advisor (
    s_id int,
    i_id int,
    foreign key(i_id) references Instructor(ID),
    foreign key(s_id) references Student(ID)
);

INSERT INTO Department(Dept_name,Building,Budget)
VALUES ('Botany', 'LT-4', 20000000.00),
('Computer Science', 'LT-1', 10000000.00),
('Literature', 'LT-3', 50000000.00),
('Mathematics', 'LT-2', 40000000.00),
('Statistics', 'LT-1', 9000000.00);


INSERT INTO Instructor(ID,name,Dept_name,Salary)
VALUES(1, 'Vikas', 'Computer Science', 100000),
(2, 'Bharti', 'Computer Science', 100000),
(3, 'Vasudha', 'Computer Science', 200000),
(4, 'Mukesh', 'Computer Science', 100000),
(5, 'Awadhesh', 'Computer Science', 200000),
(6, 'Naveen', 'Computer Science', 200000),
(7, 'Akhilesh', 'Computer Science', 80000),
(8, 'Poonam', 'Computer Science', 80000),
(9, 'Manisha', 'Computer Science', 100000),
(10, 'Geeta', 'Computer Science', 200000),
(11, 'Jitendra', 'Computer Science', 100000),
(12, 'Madhoolika', 'Computer Science', 200000),
(13, 'Kuldeep', 'Computer Science', 100000);

INSERT INTO Student(ID,Name,Dept_name,Total_cred)
VALUES(# ID, Name, Dept_name, Total_cred
(1, 'Aditya', 'Computer Science', 0),
(2, 'Akanksha', 'Mathematics', 0),
(3, 'Akshita', 'Computer Science', 0),
(4, 'Anjali', 'Statistics', 0),
(5, 'Devanshu', 'Mathematics', 0),
(6, 'Divyanshu', 'Literature', 0),
(7, 'Harshit', 'Botany', 0),
(8, 'Jagriti', 'Computer Science', 0),
(9, 'Tanuja', 'Mathematics', 0),
(10, 'Stuti', 'Statistics', 0),
(11, 'Ashish', 'Literature', 0),
(12, 'Akash', 'Computer Science', 0),
(13, 'Abhinav', 'Computer Science', 0),
(14, 'Sudeepto', 'Computer Science', 0),
(15, 'Kinshuk', 'Computer Science', 0),
(16, 'Aviral', 'Literature', 0),
(17, 'Apurva', 'Botany', 0),
(18, 'Sunil', 'Statistics', 0),
(19, 'Shubham', 'Botany', 0),
(20, 'Vallabh', 'Mathematics', 0),
(21, 'Gagan', 'Computer Science',0),
(22, 'Adarsh', 'Statistics', 0),
(23, 'Neha', 'Statistics', 0),
(24, 'Stuti', 'Computer Science', 0),
(25, 'Adamya', 'Computer Science', 0),
(26, 'Abhishek', 'Literature', 0),
(27, 'Divya', 'Literature', 0),
(28, 'Rohan', 'Botany', 0),
(29, 'Rahul', 'Botany', 0),
(30, 'Rishabh', 'Mathematics', 0);

INSERT INTO Course(Course_id,Title,Dept_name,Credits)
VALUES('BS', 'BS Statistics', 'Statistics', 300),
('BSB', 'BS Botany', 'Botany', 300),
('BSc', 'BSc Mathematics', 'Mathematics', 260),
('MA', 'MA English', 'Literature', 120),
('MS', 'MSc Computer Science', 'Computer Science', 140),
('MTech', 'MTech CS', 'Computer Science', 150);

INSERT INTO Section(Course_id,Sec_id,Semester,year,Building,Room_number,Time_slot_id)
VALUES('BS', 'A', 1, 1, 'LT-1', 'LT-1A', '9AM-11AM'),
('BS', 'A', 2, 1, 'LT-1', 'LT-1A', '11 AM-01 PM'),
('BS', 'B', 3, 2, 'LT-1', 'LT-1A', '01 PM-03 PM'),
('BS', 'B', 4, 2, 'LT-1', 'LT-1A', '03 PM-05 PM'),
('BS', 'C', 5, 3, 'LT-1', 'LT-1B', '09 AM-01 PM'),
('BS', 'C', 6, 3, 'LT-1', 'LT-1B', '01 PM-05 PM'),
('BSB', 'A', 1, 1, 'LT-4', 'LT-4A', '09 AM-11 AM'),
('BSB', 'A', 2, 1, 'LT-4', 'LT-4A', '11 AM-01 PM'),
('BSB', 'B', 3, 2, 'LT-4', 'LT-4A', '01 PM-03 PM'),
('BSB', 'B', 4, 2, 'LT-4', 'LT-4A', '03 PM-05 PM'),
('BSB', 'C', 5, 3, 'LT-4', 'LT-4B', '09 AM-01 PM'),
('BSB', 'C', 6, 3, 'LT-4', 'LT-4B', '01 PM-05 PM'),
('BSc', 'A', 1, 1, 'LT-2', 'LT-2A', '09 AM-11 AM'),
('BSc', 'A', 2, 1, 'LT-2', 'LT-2A', '11 AM-01 PM'),
('BSc', 'B', 3, 2, 'LT-2', 'LT-2A', '01 PM-03 PM'),
('BSc', 'B', 4, 2, 'LT-2', 'LT-2A', '03 PM-05 PM'),
('BSc', 'C', 5, 3, 'LT-2', 'LT-2B', '09 AM-01 PM'),
('BSc', 'C', 6, 3, 'LT-2', 'LT-2B', '01 PM-05 PM'),
('MA', 'A', 1, 1, 'LT-3', 'LT-3A', '09 AM-01 PM'),
('MA', 'A', 2, 1, 'LT-3', 'LT-3A', '01 PM-05 PM'),
('MA', 'B', 3, 2, 'LT-3', 'LT-3B', '09 AM-01 PM'),
('MA', 'B', 4, 2, 'LT-3', 'LT-3B', '01 PM-05 PM'),
('MS', 'A', 1, 1, 'LT-1', 'LT-1C', '09 AM-01 PM'),
('MS', 'A', 2, 1, 'LT-1', 'LT-1C', '01 PM-05 PM'),
('MS', 'B', 3, 2, 'LT-1', 'LT-1D', '09 AM-01 PM'),
('MS', 'B', 4, 2, 'LT-1', 'LT-1D', '01 PM-05 PM'),
('MTech', 'A', 1, 1, 'LT-1', 'LT-1E', '09 AM-01 PM'),
('MTech', 'A', 2, 1, 'LT-1', 'LT-1E', '01 PM-05 PM'),
('MTech', 'B', 3, 2, 'LT-1', 'LT-1F', '09 AM-01 PM'),
('MTech', 'B', 4, 2, 'LT-1', 'LT-1F', '01 PM-05 PM');

insert into takes(ID,Course_id,Sec_id,Semester,year,Grade)
VALUES(1, 'MS', 'A', 1, 1, NULL),
(2, 'BSc', 'A', 1, 1, NULL),
(3, 'MS', 'B', 3, 2, NULL),
(4, 'BS', 'A', 2, 1, NULL),
(5, 'BSc', 'B', 3, 2, NULL),
(6, 'MA', 'A', 1, 1, NULL),
(7, 'BSB', 'A', 2, 1, NULL),
(8, 'MTech', 'A', 1, 1, NULL),
(9, 'BSc', 'A', 2, 1, NULL),
(10, 'BS', 'B', 4, 2, NULL),
(11, 'MA', 'A', 1, 1, NULL),
(12, 'MS', 'B', 3, 2, NULL),
(13, 'MS', 'A', 1, 1, NULL),
(14, 'MTech', 'B', 4, 2, NULL),
(15, 'MTech', 'B', 4, 2, NULL),
(16, 'MA', 'A', 2, 1, NULL),
(17, 'BSB', 'A', 2, 1, NULL),
(18, 'BS', 'C', 6, 3, NULL),
(19, 'BSB', 'B', 4, 2, NULL),
(20, 'BSc', 'C', 5, 3, NULL),
(21, 'MS', 'B', 4, 2, NULL),
(22, 'BS', 'C', 5, 3, NULL),
(23, 'BS', 'C', 6, 3, NULL),
(24, 'MS', 'B', 4, 2, NULL),
(25, 'MTech', 'A', 2, 1, NULL),
(26, 'MA', 'B', 3, 2, NULL),
(27, 'MA', 'A', 1, 1, NULL),
(28, 'BSB', 'C', 5, 3, NULL),
(29, 'BSB', 'B', 3, 2, NULL),
(30, 'BSc', 'C', 5, 3, NULL);

insert into teaches(ID,Course_id,Sec_id,Semester,year)
VALUES(1, 'MS', 'A', 1, 1),
(1, 'MTech', 'B', 3, 2),
(1, 'MTech', 'B', 4, 2),
(2, 'MS', 'B', 3, 2),
(2, 'MS', 'A', 2, 1),
(2, 'MS', 'B', 4, 2),
(3, 'MTech', 'A', 2, 1),
(3, 'MS', 'A', 2, 1),
(3, 'MS', 'B', 3, 2),
(3, 'MTech', 'A', 1, 1),
(4, 'BSc', 'A', 1, 1),
(5, 'BSc', 'A', 2, 1),
(6, 'BSc', 'A', 1, 1),
(4, 'BSc', 'B', 3, 2),
(5, 'BSc', 'B', 3, 2),
(6, 'BSc', 'B', 4, 2),
(4, 'BSc', 'C', 5, 3),
(5, 'BSc', 'C', 5, 3),
(6, 'BSc', 'C', 6, 3),
(6, 'BSc', 'C', 5, 3),
(7, 'BS', 'A', 1, 1),
(8, 'BS', 'A', 2, 1),
(7, 'BS', 'B', 3, 2),
(8, 'BS', 'B', 4, 2),
(7, 'BS', 'C', 5, 3),
(8, 'BS', 'C', 6, 3),
(9, 'MA', 'A', 1, 1),
(9, 'MA', 'B', 3, 2),
(9, 'MA', 'A', 2, 1),
(10, 'MA', 'B', 3, 2),
(11, 'MA', 'B', 4, 2),
(12, 'BSB', 'A', 1, 1),
(12, 'BSB', 'C', 5, 3),
(12, 'BSB', 'B', 3, 2),
(12, 'BSB', 'A', 2, 1),
(13, 'BSB', 'B', 4, 2),
(13, 'BSB', 'A', 2, 1),
(13, 'BSB', 'C', 5, 3),
(13, 'BSB', 'C', 6, 3);

insert into advisor(s_id,i_id)
VALUES(1,1),
(2,4),
(3,2),
(4,7),
(5,6),
(6,11),
(7,12),
(8,2),
(9,4),
(10,7),
(11,11),
(12,3),
(13,3),
(14,2),
(15,1),
(16,9),
(17,13),
(18,8),
(19,13),
(20,6),
(21,1),
(22,7),
(23,7),
(24,2),
(25,2),
(26,10),
(27,9),
(28,13),
(29,12),
(30,5);*/
