-- database activity 2

-- students table from previous lesson
SELECT * FROM students;


-- create notes table
CREATE TABLE notes (
	id integer PRIMARY KEY,
	body text NOT NULL,
	student_id integer
);


-- insert 10 records
INSERT INTO notes (id, body, student_id) VALUES
	(1, 'Hi', 5),
	(2, 'Hi, welcome to class', 2),
	(3, 'We have no classes today', 4),
	(4, 'Can we have a party?', NULL),
	(5, 'Good idea', 3),
	(6, 'We have a homework for class 1', 2),
	(7, 'I have to catch up', NULL),
	(8, 'Where are we having the party?', 5),
	(9, 'It will be at popup katipunan', 2),
	(10, 'See you then', 5);


-- inner join
SELECT *
FROM students s
INNER JOIN notes n
ON s.id = n.student_id
ORDER BY s.id;


-- left join
SELECT *
FROM students s
LEFT JOIN notes n
ON s.id = n.student_id;


-- right join
SELECT *
FROM students s
RIGHT JOIN notes n
ON s.id = n.student_id;


-- full join
SELECT *
FROM students s
FULL JOIN notes n
ON s.id = n.student_id;