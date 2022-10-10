 use db_klp4;
 
/* ---------------- DCL -------------------- */
CREATE USER 'developer'@'localhost' IDENTIFIED BY 'developer';
GRANT ALL PRIVILEGES ON db_klp4.* TO 'developer'@'localhost';

CREATE USER 'student123'@'localhost' IDENTIFIED BY 'student123';
GRANT SELECT, INSERT, UPDATE, DELETE ON db_klp4.student TO 'student123'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON student_schedule TO 'student123'@'localhost';


 