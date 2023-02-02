SELECT * FROM Payment WHERE amount >= 500;
select * from student WHERE DATEDIFF(YEAR, DATEADD(year,1, birthday), current_date) > 20;
select * from student where groupnumber=10  AND DATEDIFF(YEAR, DATEADD(year,1, birthday), current_date) < 20;
select * from student where name='Mike' OR groupnumber IN (4, 5, 6);
select * from payment where DATEDIFF(month, DATEADD(year,1, payment_date), current_date) <= 8;
select * from student where name LIKE 'A%';
select * from student where name='Roxi' and groupnumber=4 OR name='Tallie' and groupnumber=9;