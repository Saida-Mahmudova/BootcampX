SELECT teachers.name as teacher, students.name as student, assignments.name as assignment, sum(completed_at-started_at) as duration
FROM assistance_requests
JOIN students ON students.id = student_id
JOIN teachers ON teachers.id = teacher_id
JOIN assignments ON assignments.id = assignment_id
GROUP BY teachers.name, students.name, assignments.name
ORDER BY duration;