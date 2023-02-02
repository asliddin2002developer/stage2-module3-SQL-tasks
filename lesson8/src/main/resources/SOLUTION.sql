SELECT MAX(birthday) FROM Student;
SELECT MIN(payment_date) FROM Payment;
SELECT AVG(mark) FROM Mark where subject_id = (select id from subject where name='Math');
SELECT MIN(amount) FROM payment WHERE type_id = (select id from paymenttype where name = 'WEEKLY');