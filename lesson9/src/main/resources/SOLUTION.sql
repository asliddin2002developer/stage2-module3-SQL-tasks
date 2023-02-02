SELECT s.id, s.name, s.birthday, s.groupnumber FROM Student as s
    INNER JOIN Mark as m
    ON s.id = m.student_id
    GROUP BY m.student_id
    HAVING AVG(m.mark) > 8;

SELECT s.id, s.name FROM Student as s
    INNER JOIN Mark as m
    ON s.id = m.student_id
    GROUP BY m.student_id
    HAVING MIN(m.mark) > 7;


SELECT s.id, s.name, COUNT(p.payment_date) FROM Student as s
    INNER JOIN Payment as p
    ON s.id = p.student_id
    GROUP BY (s.id, p.payment_date)
    HAVING COUNT(p.payment_date) > 2 and p.payment_date >= '2019-01-01 00:00:00' AND p.payment_date <= '2019-12-31 23:59:59';