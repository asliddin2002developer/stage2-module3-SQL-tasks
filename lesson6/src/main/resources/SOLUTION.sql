select * from payment where type_id = (select id from paymenttype where name='MONTHLY');
select * from mark where subject_id = (select id from subject where name='Art');

select s.id, s.name, s.birthday, s.groupnumber from student as s
    INNER JOIN payment as p
    ON s.id = p.student_id GROUP BY s.id, p.type_id HAVING p.type_id in (select id from paymenttype where name = 'WEEKLY');

select s.id, s.name, s.birthday, s.groupnumber from student as s
    INNER JOIN Mark as m
    ON s.id = m.student_id WHERE m.subject_id = (select id from subject where name = 'Math');