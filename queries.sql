--Data Set is Stored in student_performance

--Query 1: View Dataset

SELECT *
FROM student_performance;

--Query 2: Average Total Score

SELECT AVG(total_score) AS avg_score
FROM student_performance;

--Query 3: Average Score by Gender

SELECT gender,
AVG(total_score) AS avg_score
FROM student_performance
GROUP BY gender;

--Query 4: Test Preparation Effect

SELECT test_preparation_course,
AVG(total_score) AS avg_score
FROM student_performance
GROUP BY test_preparation_course;

--Query 5: Attendance Impact

SELECT attendence,
AVG(total_score) AS avg_score
FROM student_performance
GROUP BY attendence;

--Query 6: Top 10 Students

SELECT *
FROM student_performance
ORDER BY total_score DESC
LIMIT 10;

--Query 7: Grade Distribution

SELECT grade,
COUNT(*) AS student_count
FROM student_performance
GROUP BY grade
ORDER BY grade;

--Query 8: Best Subject Performance

SELECT
AVG(math_score) as avg_math,
AVG(reading_score) as avg_reading,
AVG(writing_score) as avg_writing,
AVG(science_score) as avg_science
FROM student_performance;

