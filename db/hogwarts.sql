DROP TABLE houses;
DROP TABLE students;

CREATE TABLE students (
  id SERIAL4 primary key,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  house VARCHAR(255),
  age INT2
);

CREATE TABLE houses (
  id SERIAL4 primary key,
  name VARCHAR(255),
  logo_url VARCHAR(255)
);
