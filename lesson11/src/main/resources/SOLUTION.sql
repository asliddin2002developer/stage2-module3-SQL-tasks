UPDATE Subject SET grade = 5 WHERE name = 'End of Suburbia: Oil Depletion and the Collapse of the American Dream';
UPDATE Student SET groupnumber = 8 WHERE name = 'Tremaine Worvill';
UPDATE PAYMENT SET amount = 500, student_id = 2 WHERE CAST(payment_date as DATE) > '2021-01-01' AND type_id = 2;
UPDATE Mark SET mark = 2 WHERE subject_id = 315;