CREATE DATABASE db_klp4;
USE db_klp4;

CREATE table student(
	id INT UNSIGNED AUTO_INCREMENT,
	student_name VARCHAR(255) NOT NULL,
   address VARCHAR(255),
   major VARCHAR(100) NOT NULL,
   PRIMARY KEY (id)
);

CREATE TABLE course (
	id INT UNSIGNED AUTO_INCREMENT,
	course_name VARCHAR(255),
	duration INT UNSIGNED,
	`date` DATE,	
	`time` TIME,
	PRIMARY KEY (id)
);

CREATE TABLE student_schedule (
   student_id INT UNSIGNED,
   course_id INT UNSIGNED,
   FOREIGN KEY (student_id) REFERENCES student(id) ON UPDATE CASCADE ON DELETE CASCADE,
   FOREIGN KEY (course_id) REFERENCES course(id) ON UPDATE CASCADE ON DELETE CASCADE
);

SHOW TABLES;
DESC course;
DESC student;
DESC student_schedule;



