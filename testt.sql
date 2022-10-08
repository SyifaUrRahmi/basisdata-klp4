CREATE DATABASE db_klp4;
USE db_klp4;

CREATE table Student(
	id INT UNSIGNED AUTO_INCREMENT,
	student_name VARCHAR(255) NOT NULL,
   address VARCHAR(255),
   major VARCHAR(100) NOT NULL,
   nim VARCHAR(100) UNIQUE,
   PRIMARY KEY (id)
);

DESC course;
DESC student;

CREATE TABLE course (
	id INT UNSIGNED AUTO_INCREMENT,
	couse_name VARCHAR(255),
	duration INT UNSIGNED,
	`date` DATE,	
	`time` TIME,
	PRIMARY KEY (id)
);

CREATE TABLE student_schedule (
   student_id INT AUTO_INCREMENT,
   course_id INT ,
   ADD CONSTRAINT student_id FOREIGN KEY (student_id) REFERENCES Student(id) ON UPDATE CASCADE ON DELETE CASCADE ,
   ADD CONSTRAINT course_id FOREIGN KEY (course_id) REFERENCES course(id) ON UPDATE CASCADE ON DELETE CASCADE
);

SHOW ENGINE INNODB STATUS;
