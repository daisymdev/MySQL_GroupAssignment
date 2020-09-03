CREATE DATABASE IF NOT EXISTS school;
USE school;

CREATE TABLE IF NOT EXISTS students (
    students_id_pk INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(25) NOT NULL,
    last_name VARCHAR(25) NOT NULL,
    email VARCHAR(100) NOT NULL,
    phone_number INT?() NOT NULL
);

CREATE TABLE IF NOT EXISTS class (
    class_id_pk INT AUTO_INCREMENT PRIMARY KEY,
    num_of_students INT NOT NULL,
    num_of_laptops INT NOT NULL
);

CREATE TABLE IF NOT EXISTS comments (
    comments_id_pk INT AUTO_INCREMENT PRIMARY KEY,
    comment VARCHAR(255) NOT NULL,
    postings_id_fk INT,
    users_id_fk INT,
    FOREIGN KEY (postings_id_fk) REFERENCES postings (postings_id_pk) ON UPDATE RESTRICT ON DELETE CASCADE,
    FOREIGN KEY (users_id_fk) REFERENCES users (users_id_pk) ON UPDATE RESTRICT ON DELETE CASCADE
);

INSERT INTO users (username, email, password) VALUES ('bob', 'bob@gmail.com', 'bobsmith123');
INSERT INTO postings (post, users_id_fk) VALUES ('Tweeting from code!', 2);
INSERT INTO comments (comment, postings_id_fk, users_id_fk) VALUES ('Commenting on daisys post!', 2, 2);
