-- database activity 1

CREATE TABLE students (
	id integer PRIMARY KEY,
	first_name character varying(255) NOT NULL,
	middle_name character varying(255) NOT NULL,
	last_name character varying(255) NOT NULL,
	age integer NOT NULL CHECK (age > 0),
	location text NOT NULL 
);

SELECT * FROM students;

INSERT INTO students (id, first_name, middle_name, last_name, age, location) VALUES
	(1, 'Juan', 'Blank', 'Cruz', 18, 'Manila'),
	(2, 'Anne', 'Blank', 'Wall', 20, 'Manila'),
	(3, 'Theresa', 'Blank', 'Joseph', 21, 'Manila'),
	(4, 'Isaac', 'Blank', 'Gray', 19, 'Laguna'),
	(5, 'Zack', 'Blank', 'Matthews', 22, 'Marikina'),
	(6, 'Finn', 'Blank', 'Lam', 25, 'Manila');

UPDATE students SET first_name = 'Ivan', middle_name = 'Ingram', last_name = 'Howard', age = 25, location = 'Bulacan' WHERE id = 1;

DELETE FROM students WHERE id = 6;


-- activity 2 - database

SELECT COUNT(id)
FROM students;

SELECT *
FROM students
WHERE location = 'Manila';

SELECT AVG(age)
FROM students;

SELECT * FROM students
ORDER BY age DESC;