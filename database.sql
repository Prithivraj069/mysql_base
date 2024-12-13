CREATE database swimming_coach;

show database;

CREATE TABLE location (
    location_id INT UNSIGNED PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    address VARCHAR(255) DEFAULT ''

) engine = innodb;

CREATE TABLE parents (
    parent_id INT UNSIGNED PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) DEFAULT ''
) engine = innodb;

CREATE TABLE students (
    student_id INT UNSIGNED PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    dob DATE,
    swimming_level VARCHAR(45)
) engine = innodb;

ALTER TABLE students ADD COLUMN parent_id INT UNSIGNED;

ALTER TABLE students ADD CONSTRAINT fk_parent_student
FOREIGN KEY (parent_id) REFERENCES parents(parent_id);