 -- use db_klp4;
/* ---------------- DCL -------------------- */
-- MEMBUAT USER admin dan student untuk mengakses database
 CREATE USER 'admin' IDENTIFIED BY 'admin';
 CREATE USER 'student' IDENTIFIED BY 'student123';

-- MEMBERIKAN semua akses kepada admin 
GRANT ALL PRIVILEGES ON * TO 'admin';

-- MEMBERIKAN sebagian akses kepada student
GRANT SELECT, INSERT, UPDATE, DELETE ON student TO 'student';
GRANT SELECT, INSERT, UPDATE, DELETE ON student_schedule TO 'student';
 