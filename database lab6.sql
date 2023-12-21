DROP TABLE IF EXISTS 'student';
DROP TABLE IF EXISTS 'student_marks';
DROP TABLE IF EXISTS 'group';
DROP TABLE IF EXISTS 'worker';
CREATE TABLE student (
	  id INTEGER PRIMARY KEY,
	  name VARCHAR(255),
	  group_id FLOAT NOT NULL
	);
INSERT INTO 'student' VALUES(1,'Ваня',1);
INSERT INTO 'student' VALUES(2,'Петя',1);
INSERT INTO 'student' VALUES(3,'Ваня',2);
CREATE TABLE student_marks (
	  student_id INTEGER PRIMARY KEY,
	  math_mark_average float,
	  physics_mark_average float,
	  python_mark_average float
	);
INSERT INTO 'student_marks' VALUES(1,4,5,4.5);
INSERT INTO 'student_marks' VALUES(2,4.35,4.95,4.5);
INSERT INTO 'student_marks' VALUES(3,2.5,2.75,3);
CREATE TABLE `group` (
	  id INTEGER PRIMARY KEY,
	  name VARCHAR(255) NOT NULL,
	  description VARCHAR(255)
	);
INSERT INTO 'group' VALUES(1,'БВТ2301','Группа БВТ2301');
INSERT INTO 'group' VALUES(2,'БВТ2302','Группа БВТ2302');
CREATE TABLE worker (
  worker_id INTEGER PRIMARY KEY,
  shop_id INTEGER REFERENCES product (id),
  name VARCHAR(255),
  salary INTEGER NOT NULL,
  position VARCHAR(255)
 );
INSERT INTO 'worker' VALUES(1,1,'Катя',2000,'Региональный Менеджер');
INSERT INTO 'worker' VALUES(2,1,'Глеб',3000,'Менеджер');
INSERT INTO 'worker' VALUES(3,2,'Сир Франсис',1200,'Уборщик');
