-- Q1. Display the names of students and their corresponding advisor's name, department, and salary.
SELECT s.Name, i.name AS advisor_name, i.Dept_name, i.salary
FROM student s
LEFT JOIN advisor a ON s.ID = a.s_id
LEFT JOIN instructor i ON a.i_id = i.ID;

-- Q2. List the course titles along with the names of instructors who teach them and the total number of students who took each course.
SELECT c.Title AS course_title, i.name AS instructor_name, COUNT(t.ID) AS total_students
FROM course c
LEFT JOIN teaches t ON c.course_id = t.course_id
LEFT JOIN instructor i ON t.ID = i.ID
GROUP BY c.title, i.name;

-- Q3. Retrieve the department names along with the total budget allocated to each department and the average salary of instructors in each department.
SELECT d.dept_name, d.budget, AVG(i.salary) AS avg_salary
FROM department d
LEFT JOIN instructor i ON d.dept_name = i.dept_name
GROUP BY d.dept_name, d.budget;

-- Q4. Show the names of students and the course titles they took along with the section details (building, room_number, and time_slot).
SELECT s.name, c.title AS course_title, sec.building, sec.room_number, sec.time_slot_id
FROM student s
LEFT JOIN takes t ON s.ID = t.ID
LEFT JOIN section sec ON t.course_id = sec.course_id AND t.sec_id = sec.sec_id
LEFT JOIN course c ON t.course_id = c.course_id;

-- Q5. List all instructors and the total number of courses they teach in each semester and year combination.
SELECT i.name AS instructor_name, t.semester, t.year, COUNT(t.course_id) AS total_courses_taught
FROM instructor i
LEFT JOIN teaches t ON i.ID = t.ID
GROUP BY i.name, t.semester, t.year;

-- Q6. List all courses along with the names of instructors who are the advisors of students taking those courses.
SELECT distinct c.title AS course_title, i.name AS instructor_name
FROM course c
LEFT JOIN takes t ON c.course_id = t.course_id
LEFT JOIN advisor a ON t.ID = a.s_id
LEFT JOIN instructor i ON a.i_id = i.ID;

-- Q7. Show the course titles and the total number of students who took each course in the 'Computer Science' department.
SELECT c.title AS course_title, COUNT(t.ID) AS total_students
FROM course c
LEFT JOIN takes t ON c.course_id = t.course_id
LEFT JOIN student s ON t.ID = s.ID
WHERE s.dept_name = 'Computer Science'
GROUP BY c.title;

-- Q8. List the names of students who are advised by instructors with a salary greater than the department's average salary.
SELECT s.name
FROM student s
LEFT JOIN advisor a ON s.ID = a.s_id
LEFT JOIN instructor i ON a.i_id = i.ID
LEFT JOIN (SELECT dept_name, AVG(salary) AS avg_salary FROM instructor GROUP BY dept_name) d ON i.dept_name = d.dept_name
WHERE i.salary > d.avg_salary;

-- Q9. List all instructors and the total number of students advised by each instructor.
SELECT i.name AS instructor_name, COUNT(a.s_id) AS total_students_advised
FROM instructor i
LEFT JOIN advisor a ON i.ID = a.i_id
GROUP BY i.name; 

-- Q10. Retrieve the department names and the number of students in each department who have more than 90 total credits.
SELECT d.dept_name, COUNT(s.id) AS num_students_above_90_credits
FROM department d
LEFT JOIN student s ON d.dept_name = s.dept_name AND s.total_cred > 90
GROUP BY d.dept_name;

-- Q11. Show the names of students along with the course title and grade they received in each course, even if they have not taken any courses yet.
SELECT s.name, c.title AS course_title, t.grade
FROM student s
LEFT JOIN takes t ON s.id = t.id
LEFT JOIN course c ON t.course_id = c.course_id;
