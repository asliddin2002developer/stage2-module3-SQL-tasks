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


select id, name from student where id in (select student_id from payment
          where payment_date >= '2019-01-01 00:00:00' AND payment_date <= '2019-12-31 23:59:59'
          GROUP BY student_id
          HAVING  COUNT(student_id)  > 2);