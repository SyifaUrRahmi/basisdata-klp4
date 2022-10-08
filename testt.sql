-- CREATE DATABASE db_klp4;
-- USE db_klp4;

CREATE table Student(
	student_name VARCHAR(255) NOT NULL,
	id INT AUTO_INCREMENT,
   address VARCHAR(255),
   major VARCHAR(100) NOT NULL,
   nim VARCHAR(100) UNIQUE,
   PRIMARY KEY (id)
);

CREATE TABLE course (
	id INT UNSIGNED AUTO_INCREMENT,
	couse_name VARCHAR(255),
	duration INT UNSIGNED,
	`date` DATE,	
	`time` TIME,
	PRIMARY KEY (id)
);

CREATE TABLE student_schedule (
    student_id INT,
    schedule_id INT,
    FOREIGN KEY (student_id) REFERENCES students(id),
    FOREIGN KEY (schedule_id) REFERENCES `schedule`(id)
);
