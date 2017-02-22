DROP TABLE students;

CREATE TABLE students (
  id SERIAL4 primary key,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  house VARCHAR(255),
  age INT2
);
