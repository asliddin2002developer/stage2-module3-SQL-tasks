delete from student where id in
                          (select m.student_id from MARK as m
                              INNER JOIN SUBJECT as s
                                  ON m.subject_id = s.id
                                               Group By m.student_id
                                               HAVING COUNT(s.grade) > 4);

delete from student where id in
                          (select student_id from MARK
                                             GROUP BY student_id, mark
                                             HAVING COUNT(mark) >= 1 AND mark < 4);

delete from paymenttype where name = 'DAILY';

delete from mark where mark < 7;






select name from student where id in
                               (select m.student_id from MARK as m
                                                             INNER JOIN SUBJECT as s
                                                                        ON m.subject_id = s.id
                                Group By m.student_id
                                HAVING COUNT(s.grade) > 4);
select name from subject where id in
                               (select s.name from MARK as m
                                                       INNER JOIN SUBJECT as s
                                                                  ON m.subject_id = s.id
                                Group By s.name
                                HAVING COUNT(s.grade) > 4);

select * from mark where student_id = 1;