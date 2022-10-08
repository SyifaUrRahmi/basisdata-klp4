-- CREATE DATABASE db_klp4;
-- USE db_klp4;

CREATE table Student(
	student_name VARCHAR(255) NOT NULL,
    address VARCHAR(255),
    major VARCHAR(100) NOT NULL,
    nim VARCHAR(100) UNIQUE,
    id INT AUTO_INCREMENT,
    PRIMARY KEY (id)
    );

CREATE TABLE course (
couse_name VARCHAR(255),
duration INT UNSIGNED,
id INT UNSIGNED AUTO_INCREMENT,
PRIMARY KEY (id)
);

CREATE TABLE scheduleTable (
`date` DATE,
`time` TIME,
course_id INT,
id INT UNSIGNED AUTO_INCREMENT,
PRIMARY KEY(id),
FOREIGN KEY(course_id) REFERENCES course(id)
);

CREATE TABLE student_schedule (
    student_id INT,
    schedule_id INT,
    FOREIGN KEY (student_id) REFERENCES students(id),
    FOREIGN KEY (schedule_id) REFERENCES `schedule`(id)
);
