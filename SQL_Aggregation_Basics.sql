-- =========================================
-- SQL AGGREGATION BASICS PROJECT
-- =========================================

-- STEP 1: Select Database
CREATE DATABASE IF NOT EXISTS college;
USE college;


-- STEP 2: Remove old students table
DROP TABLE IF EXISTS students;


-- STEP 3: Create Students Table
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    course VARCHAR(50),
    marks INT
);


-- STEP 4: Insert Student Data
INSERT INTO students (student_id, name, course, marks)
VALUES
(1, 'Rahul', 'BCA', 78),
(2, 'Aman', 'BCA', 85),
(3, 'Priya', 'BBA', 72),
(4, 'Neha', 'BCA', 91),
(5, 'Karan', 'BBA', 68),
(6, 'Riya', 'BCA', 88),
(7, 'Arjun', 'BBA', 76),
(8, 'Ananya', 'BCA', 95),
(9, 'Vikas', 'BBA', 64),
(10, 'Pooja', 'BCA', 81);


-- STEP 5: Check Complete Table
SELECT * FROM students;


-- =========================================
-- AGGREGATION QUERIES
-- =========================================

-- 1. COUNT - Total Students
SELECT COUNT(*) AS total_students
FROM students;


-- 2. SUM - Total Marks
SELECT SUM(marks) AS total_marks
FROM students;


-- 3. AVG - Average Marks
SELECT AVG(marks) AS average_marks
FROM students;


-- 4. MIN - Minimum Marks
SELECT MIN(marks) AS minimum_marks
FROM students;


-- 5. MAX - Maximum Marks
SELECT MAX(marks) AS maximum_marks
FROM students;


-- 6. COUNT + GROUP BY - Students per Course
SELECT course, COUNT(*) AS total_students
FROM students
GROUP BY course;


-- 7. AVG + GROUP BY - Average Marks per Course
SELECT course, AVG(marks) AS average_marks
FROM students
GROUP BY course;


-- 8. MAX + GROUP BY - Highest Marks per Course
SELECT course, MAX(marks) AS highest_marks
FROM students
GROUP BY course;


-- 9. MIN + GROUP BY - Lowest Marks per Course
SELECT course, MIN(marks) AS lowest_marks
FROM students
GROUP BY course;


-- 10. SUM + GROUP BY - Total Marks per Course
SELECT course, SUM(marks) AS total_marks
FROM students
GROUP BY course;
-- =========================================
-- SQL AGGREGATION BASICS PROJECT
-- =========================================

-- Step 1: Create Database
CREATE DATABASE IF NOT EXISTS college;

-- Step 2: Select Database
USE college;

-- Step 3: Remove old table
DROP TABLE IF EXISTS students;

-- Step 4: Create Students Table
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    course VARCHAR(50),
    marks INT
);

-- Step 5: Insert Data
INSERT INTO students (student_id, name, course, marks)
VALUES
(1, 'Rahul', 'BCA', 78),
(2, 'Aman', 'BCA', 85),
(3, 'Priya', 'BBA', 72),
(4, 'Neha', 'BCA', 91),
(5, 'Karan', 'BBA', 68),
(6, 'Riya', 'BCA', 88),
(7, 'Arjun', 'BBA', 76),
(8, 'Ananya', 'BCA', 95),
(9, 'Vikas', 'BBA', 64),
(10, 'Pooja', 'BCA', 81);

-- Step 6: Display All Students
SELECT * FROM students;

-- =========================================
-- AGGREGATION FUNCTIONS
-- =========================================

-- 1. COUNT - Total Students
SELECT COUNT(*) AS total_students
FROM students;

-- 2. SUM - Total Marks
SELECT SUM(marks) AS total_marks
FROM students;

-- 3. AVG - Average Marks
SELECT AVG(marks) AS average_marks
FROM students;

-- 4. MIN - Minimum Marks
SELECT MIN(marks) AS minimum_marks
FROM students;

-- 5. MAX - Maximum Marks
SELECT MAX(marks) AS maximum_marks
FROM students;

-- =========================================
-- GROUP BY
-- =========================================

-- 6. Count Students by Course
SELECT course, COUNT(*) AS total_students
FROM students
GROUP BY course;

-- 7. Average Marks by Course
SELECT course, AVG(marks) AS average_marks
FROM students
GROUP BY course;

-- 8. Highest Marks by Course
SELECT course, MAX(marks) AS highest_marks
FROM students
GROUP BY course;

-- 9. Lowest Marks by Course
SELECT course, MIN(marks) AS lowest_marks
FROM students
GROUP BY course;

-- 10. Total Marks by Course
SELECT course, SUM(marks) AS total_marks
FROM students
GROUP BY course;