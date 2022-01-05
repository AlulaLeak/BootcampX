SELECT count(assistance_requests.*) as total_assistances, teachers.name as name
FROM assistance_requests
JOIN teachers ON teacher.id = teachers_id
WHERE name = "Waylon Boehm";