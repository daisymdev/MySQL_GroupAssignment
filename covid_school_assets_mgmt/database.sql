CREATE DATABASE IF NOT EXISTS school;
USE school;

CREATE TABLE IF NOT EXISTS class (
    class_id_pk INT AUTO_INCREMENT PRIMARY KEY,
    class_name VARCHAR(100) NOT NULL,
    teacher_name VARCHAR(100) NOT NULL,
    num_of_laptops INT NOT NULL
);
CREATE TABLE IF NOT EXISTS student (
    students_id_pk INT AUTO_INCREMENT PRIMARY KEY,
    class_id_fk  INT NOT NULL,
    first_name VARCHAR(25) NOT NULL,
    last_name VARCHAR(25) NOT NULL,
    email VARCHAR(100) NOT NULL,
    phone_number VARCHAR(10) NOT NULL,
    FOREIGN KEY (class_id_fk) REFERENCES class (class_id_pk)
);

CREATE TABLE IF NOT EXISTS supplies (
    students_id_fk INT NOT NULL,
    laptop BOOLEAN,
    home_internet_access BOOLEAN,
    FOREIGN KEY (students_id_fk) REFERENCES student (students_id_pk)
);

-- Examples of Values
INSERT INTO class (class_name, teacher_name, num_of_laptops) VALUES ('Math', 'Ms. Green', 25);
INSERT INTO student (class_id_fk, first_name, last_name, email, phone_number) VALUES (3, 'Jacky', 'Mae', 'jacky.mae@email.com', '6025556789');
INSERT INTO supplies (students_id_fk, laptop, home_internet_access) VALUES (10, true, false);
