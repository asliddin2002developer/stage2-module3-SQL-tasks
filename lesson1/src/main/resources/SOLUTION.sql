CREATE TABLE STUDENT
(
     id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR NOT NULL,
     birthday DATE,
    `group` INT NOT NULL
);

CREATE TABLE Subject (
    id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR NOT NULL,
    description VARCHAR,
    `grade` INTEGER NOT NULL
);

CREATE TABLE PaymentType(
    id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR NOT NULL
);

CREATE TABLE Payment (
    id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    type_id BIGINT NOT NULL ,
    amount DECIMAL,
    student_id BIGINT NOT NULL,
    payment_date DATETIME,
    FOREIGN KEY (type_id) REFERENCES PaymentType(id),
    FOREIGN KEY (student_id) REFERENCES Student(id)
);

CREATE TABLE MARK (
    id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    student_id BIGINT NOT NULL,
    subject_id BIGINT NOT NULL,
    mark INT NOT NULL,
    FOREIGN KEY (student_id) REFERENCES Student(id),
    FOREIGN KEY (subject_id) REFERENCES Subject(id)
);
