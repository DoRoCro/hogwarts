

ALTER TABLE students ADD COLUMN house_id INT4 REFERENCES houses(id); 

UPDATE students SET house_id = houses.id  FROM houses WHERE houses.name = students.house ;

ALTER TABLE students DROP house ; 
