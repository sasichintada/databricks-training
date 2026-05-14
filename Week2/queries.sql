--1

SELECT s.student_name,d.department_name
FROM Student s
LEFT JOIN Department d
ON s.department_id=d.department_id;

--2

SELECT st.staff_name,d.department_name
FROM Staff st
LEFT JOIN Department d
ON st.department_id=d.department_id;

--3

SELECT d.department_name
FROM Department d
LEFT JOIN Student s
ON d.department_id=s.department_id
WHERE s.student_id IS NULL;

--4

SELECT s.student_name
FROM Student s
LEFT JOIN Mark m
ON s.student_id=m.student_id
WHERE m.student_id IS NULL;

--5

SELECT subject_name
FROM Subject
WHERE staff_id IS NULL;

--6

SELECT d.department_name,AVG(s.cgpa) AS avg_cgpa
FROM Student s
JOIN Department d
ON s.department_id=d.department_id
GROUP BY d.department_name;

--7

SELECT d.department_name,AVG(s.cgpa) AS avg_cgpa
FROM Student s
JOIN Department d
ON s.department_id=d.department_id
GROUP BY d.department_name
HAVING AVG(s.cgpa)>8.0;

--8

SELECT d.department_name,COUNT(s.student_id) AS total_students
FROM Department d
LEFT JOIN Student s
ON d.department_id=s.department_id
GROUP BY d.department_name;

--9

SELECT sub.subject_name,
       MAX(m.marks) AS highest_marks,
       MIN(m.marks) AS lowest_marks
FROM Mark m
JOIN Subject sub
ON m.subject_id=sub.subject_id
GROUP BY sub.subject_name;

--10

SELECT DISTINCT s.student_name, m.marks
FROM Student s
JOIN Mark m
ON s.student_id = m.student_id
WHERE m.marks > 90;

--11

SELECT s.student_name
FROM Student s
JOIN Department d
ON s.department_id = d.department_id
WHERE d.department_name = 'Computer Science';

--12

SELECT st.staff_name,
       COUNT(sub.subject_id) AS total_subjects
FROM Staff st
LEFT JOIN Subject sub
ON st.staff_id = sub.staff_id
GROUP BY st.staff_name;

--13

SELECT s.student_name,
       SUM(m.marks) AS total_marks
FROM Student s
LEFT JOIN Mark m
ON s.student_id = m.student_id
GROUP BY s.student_name;

--14

SELECT d.department_name,
       COUNT(st.staff_id) AS total_staff
FROM Department d
JOIN Staff st
ON d.department_id = st.department_id
GROUP BY d.department_name
HAVING COUNT(st.staff_id) > 2;

--15

SELECT student_name, cgpa
FROM Student
WHERE cgpa > (
    SELECT AVG(cgpa)
    FROM Student
);

--16

SELECT st.staff_name,
       st.salary,
       st.department_id
FROM Staff st
WHERE st.salary > (
    SELECT AVG(salary)
    FROM Staff
    WHERE department_id = st.department_id
);

--17

SELECT MAX(salary) AS second_highest_salary
FROM Staff
WHERE salary < (
    SELECT MAX(salary)
    FROM Staff
);

--18

SELECT s.student_name,
       sub.subject_name,
       m.marks
FROM Mark m
JOIN Student s
ON m.student_id = s.student_id
JOIN Subject sub
ON m.subject_id = sub.subject_id
WHERE m.marks = (
    SELECT MAX(m2.marks)
    FROM Mark m2
    WHERE m2.subject_id = m.subject_id
);

--19

SELECT s.student_name,
       m.subject_id,
       m.marks
FROM Student s
LEFT JOIN Mark m
ON s.student_id = m.student_id;

--20

SELECT sub.subject_name,
       AVG(m.marks) AS avg_marks
FROM Mark m
JOIN Subject sub
ON m.subject_id = sub.subject_id
GROUP BY sub.subject_name
HAVING AVG(m.marks) < 70;