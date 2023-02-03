select * from mark where mark > 6 ORDER BY mark DESC;
select * from payment where amount < 300 ORDER BY amount ASC;
select name from paymenttype ORDER BY name ASC;
select * from student ORDER BY name DESC;

select * from student where id in
     (select DISTINCT student_id from payment
                                 GROUP BY student_id, amount
                                 having COUNT(amount) >= 1 and amount > 1000)
                      ORDER BY birthday;
