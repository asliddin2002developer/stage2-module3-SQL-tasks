delete from student where id in (select DISTINCT m.student_id from mark as m
    INNER JOIN  Subject as s
    ON m.subject_id = s.id
    WHERE s.grade >= 4);


delete from student where id in
                          (select student_id from MARK
                                             GROUP BY student_id, mark
                                             HAVING COUNT(mark) >= 1 AND mark < 4);

delete from paymenttype where name = 'DAILY';

delete from mark where mark < 7;