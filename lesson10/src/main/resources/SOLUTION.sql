SELECT s.id, s.name, s.description, s.grade FROM Subject as s
    INNER JOIN Mark as m
    ON s.id = m.subject_id
    GROUP BY s.id
    HAVING AVG(m.mark) > (SELECT AVG(mark) FROM Mark);

SELECT s.id, s.name, s.birthday, s.groupnumber FROM Student as s
    INNER JOIN Payment as p
    ON s.id = p.student_id
    GROUP BY s.id
    HAVING AVG(p.amount) < (SELECT AVG(amount) FROM payment);