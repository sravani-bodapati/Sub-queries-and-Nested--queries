-- create database students
create database students;
use students;
-- Create Students table
CREATE TABLE students (
  student_id INTEGER PRIMARY KEY,
  name TEXT,
  department TEXT,
  marks INTEGER
);

-- Insert sample data
INSERT INTO students (student_id, name, department, marks) VALUES
(1, 'Alice', 'CS', 85),
(2, 'Bob', 'Math', 92),
(3, 'Charlie', 'CS', 70),
(4, 'David', 'Math', 88),
(5, 'Eva', 'CS', 95);

-- 1. Subquery in WHERE: Students with marks above average
SELECT name, marks
FROM students
WHERE marks > (SELECT AVG(marks) FROM students);

-- 2. Subquery with IN: Students from departments with more than 1 student
SELECT name, department
FROM students
WHERE department IN (
  SELECT department
  FROM students
  GROUP BY department
  HAVING COUNT(*) > 1
);

-- 3. Correlated Subquery: Students with highest marks in their department
SELECT s1.name, s1.department, s1.marks
FROM students s1
WHERE s1.marks = (
  SELECT MAX(s2.marks)
  FROM students s2
  WHERE s2.department = s1.department
);

-- 4. Subquery in FROM (Derived Table): Avg marks per department
SELECT d.department, d.avg_marks
FROM (
  SELECT department, AVG(marks) AS avg_marks
  FROM students
  GROUP BY department
) d;

-- 5. EXISTS: Check if at least one CS student exists
SELECT 'CS student exists' AS result
WHERE EXISTS (
  SELECT 1 FROM students WHERE department = 'CS'
);



