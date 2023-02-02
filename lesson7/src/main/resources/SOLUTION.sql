select * from mark where mark > 6 ORDER BY mark DESC;
select * from payment where amount < 300 ORDER BY amount ASC;
select name from paymenttype ORDER BY name ASC;
select * from student ORDER BY name DESC;

SELECT s.name, s.birthday, Count(p.amount), p.amount from student as s
    INNER JOIN Payment as p
    ON s.id = p.student_id
    GROUP BY (p.amount, s.name)
    HAVING COUNT(p.amount) >= 1 and p.amount > 1000
    ORDER BY s.birthday ASC;
