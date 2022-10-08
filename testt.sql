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