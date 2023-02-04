/*  STUDENT*/
INSERT INTO Student(`name`, groupnumber) VALUES ('John', 1);

INSERT INTO Student(`name`, groupnumber) VALUES ('Oliver' ,2),('James', 2),('Lucas', 2),('Henry', 2);

INSERT INTO Student(`name`, groupnumber) VALUES ('Jacob' ,3),('Logan', 3);

INSERT INTO Student(`name`, groupnumber) VALUES ('Asliddin', 4),('Azamat', 4),('Jahongir', 4),('Bobojon', 4);

INSERT INTO Student(`name`, groupnumber) VALUES ('Bobur' ,5),('Elmurod', 5),('Donyor', 5),('Ikrima', 5);

/* SUBJECT */
INSERT INTO SUBJECT (`name`, `grade`) VALUES ('Art', 1), ('Music', 1);
INSERT INTO SUBJECT (`name`, `grade`) VALUES ('Geography', 2), ('History', 2);
INSERT INTO SUBJECT (`name`, `grade`) VALUES ('PE', 3), ('Math', 3);
INSERT INTO SUBJECT (`name`, `grade`) VALUES ('Science', 4), ('IT', 4);
INSERT INTO SUBJECT (`name`, `grade`) VALUES ('Computer Science', 5), ('Web Development', 5);

/* PAYMENT TYPE */
INSERT INTO PAYMENTTYPE (name) VALUES ('DAILY'), ('WEEKLY'), ('MONTHLY');

/* PAYMENT */
INSERT INTO PAYMENT (`type_id`, `student_id`) VALUES
    ((select id from PAYMENTTYPE WHERE name = 'WEEKLY'), (select id from Student WHERE name = 'John'));

INSERT INTO PAYMENT (`type_id`, `student_id`) VALUES
    ((select id from PAYMENTTYPE WHERE name = 'MONTHLY'), (select id from Student WHERE name = 'Oliver'));

INSERT INTO PAYMENT (`type_id`, `student_id`) VALUES
    ((select id from PAYMENTTYPE WHERE name = 'WEEKLY'), (select id from Student WHERE name = 'Henry'));

INSERT INTO PAYMENT (`type_id`, `student_id`) VALUES
    ((select id from PAYMENTTYPE WHERE name = 'DAILY'), (select id from Student WHERE name = 'James'));

INSERT INTO PAYMENT (`type_id`, `student_id`) VALUES
    ((select id from PAYMENTTYPE WHERE name = 'MONTHLY'), (select id from Student WHERE name = 'Azamat'));

INSERT INTO PAYMENT (`type_id`, `student_id`) VALUES
    ((select id from PAYMENTTYPE WHERE name = 'WEEKLY'), (select id from Student WHERE name = 'Asliddin'));

INSERT INTO PAYMENT (`type_id`, `student_id`) VALUES
    ((select id from PAYMENTTYPE WHERE name = 'WEEKLY'), (select id from Student WHERE name = 'Bobojon'));

/* MARKS */
INSERT INTO MARK (student_id, subject_id, mark) VALUES ( (select id from Student where name='Chris'), (select id from Subject where name='Art'), 8);
INSERT INTO MARK (student_id, subject_id, mark) VALUES ( (select id from Student where name='Oliver'), (select id from Subject where name='History'), 5);
INSERT INTO MARK (student_id, subject_id, mark) VALUES ( (select id from Student where name='James'), (select id from Subject where name='Geography'), 9);
INSERT INTO MARK (student_id, subject_id, mark) VALUES ( (select id from Student where name='Jacob'), (select id from Subject where name='Math'), 4);
INSERT INTO MARK (student_id, subject_id, mark) VALUES ( (select id from Student where name='Logan'), (select id from Subject where name='PE'), 9);
INSERT INTO MARK (student_id, subject_id, mark) VALUES ( (select id from Student where name='Asliddin'), (select id from Subject where name='Computer Science'), 9);
INSERT INTO MARK (student_id, subject_id, mark) VALUES ( (select id from Student where name='Azamat'), (select id from Subject where name='Web Development'), 9);