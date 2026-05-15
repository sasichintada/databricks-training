-- 21. Show students based on highest CGPA

SELECT student_id, student_name, cgpa
FROM Student
ORDER BY cgpa DESC;


-- 22. Find total salary spent in each department

SELECT department_id,
       SUM(salary) AS total_salary
FROM Staff
GROUP BY department_id;


-- 23. Show departments where total salary is more than 200000

SELECT department_id,
       SUM(salary) AS total_salary
FROM Staff
GROUP BY department_id
HAVING SUM(salary) > 200000;


-- 24. Find students admitted after 2021 with CGPA greater than 7.5

SELECT *
FROM Student
WHERE admission_year > 2021
AND cgpa > 7.5;


-- 25. Count how many students joined in each year

SELECT admission_year,
       COUNT(*) AS total_students
FROM Student
GROUP BY admission_year
ORDER BY admission_year;


-- 26. Find the city having the highest number of students

SELECT city,
       COUNT(*) AS student_count
FROM Student
GROUP BY city
ORDER BY student_count DESC
LIMIT 1;


-- 27. Display all departments with number of staff members
-- Including departments with no staff

SELECT d.department_id,
       d.department_name,
       COUNT(s.staff_id) AS staff_count
FROM Department d
LEFT JOIN Staff s
ON d.department_id = s.department_id
GROUP BY d.department_id, d.department_name;


-- 28. Find students who failed in at least one subject

SELECT DISTINCT s.student_id,
       s.student_name
FROM Student s
JOIN Mark m
ON s.student_id = m.student_id
WHERE m.marks < 50;


-- 29. Show staff members hired before 2018

SELECT *
FROM Staff
WHERE hire_date < '2018-01-01';


-- 30. Find departments where all staff salaries are available
-- (No NULL salary values)

SELECT department_id
FROM Staff
GROUP BY department_id
HAVING COUNT(salary) = COUNT(*);


-- 31. Assign row numbers to students based on CGPA

SELECT student_id,
       student_name,
       cgpa,
       ROW_NUMBER() OVER (ORDER BY cgpa DESC) AS row_number
FROM Student;


-- 32. Rank students according to CGPA

SELECT student_id,
       student_name,
       cgpa,
       RANK() OVER (ORDER BY cgpa DESC) AS rank_number
FROM Student;


-- 33. Show dense rank for staff salaries

SELECT staff_id,
       staff_name,
       salary,
       DENSE_RANK() OVER (ORDER BY salary DESC) AS salary_rank
FROM Staff;


-- 34. Find top 3 students with highest marks using window function

SELECT *
FROM (
    SELECT s.student_id,
           s.student_name,
           m.marks,
           RANK() OVER (ORDER BY m.marks DESC) AS rank_number
    FROM Student s
    JOIN Mark m
    ON s.student_id = m.student_id
) AS ranked_students
WHERE rank_number <= 3;


-- 35. Show running total of marks for each student

SELECT student_id,
       subject_id,
       marks,
       SUM(marks) OVER (
           PARTITION BY student_id
           ORDER BY subject_id
       ) AS running_total
FROM Mark;