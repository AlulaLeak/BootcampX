SELECT teachers.name as teacher,
students.name as student,
assignments.name as assignment,
(assistance_requests.completed_at - assistance_requests.started_at) as duration
FROM students
JOIN assistance_requests ON students.id = assistance_requests.student_id
JOIN teachers ON teacher.id = assistance_requests.teacher_id
GROUP BY teachers.name
ORDER BY duration;