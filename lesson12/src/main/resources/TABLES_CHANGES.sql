ALTER TABLE MARK DROP CONSTRAINT mark_student_id_fkey;
ALTER TABLE MARK ADD CONSTRAINT mark_student_id_fkey FOREIGN KEY (student_id) REFERENCES Student(id) ON DELETE CASCADE;

ALTER TABLE MARK DROP CONSTRAINT mark_subject_id_fkey;
ALTER TABLE MARK ADD CONSTRAINT mark_subject_id_fkey FOREIGN KEY (subject_id) REFERENCES Subject(id) ON DELETE CASCADE;

ALTER TABLE PAYMENT DROP CONSTRAINT payment_student_id_fkey;
ALTER TABLE PAYMENT ADD constraint payment_student_id_fkey foreign key (student_id) references student(id) ON DELETE CASCADE;

ALTER TABLE PAYMENT DROP CONSTRAINT payment_type_id_fkey;
ALTER TABLE PAYMENT ADD CONSTRAINT payment_type_id_fkey foreign key (type_id) references paymenttype(id) ON DELETE CASCADE;