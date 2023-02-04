SELECT * FROM Payment WHERE amount >= 500;
select * from student WHERE DATEDIFF(YEAR, birthday, '2023-12-12') > 20;
select * from student where groupnumber=10  AND DATEDIFF(YEAR, birthday, '2023-12-12') < 20;
select * from student where name LIKE 'Mike%' OR groupnumber IN (4, 5, 6);
select * from payment where payment_date >= (SELECT DATEADD(month, -8, '2022-08-25') AS DateAdd);
select * from student where name LIKE 'A%';
select * from student where name LIKE 'Roxi%' and groupnumber=4 OR name LIKE 'Tallie%' and groupnumber=9;