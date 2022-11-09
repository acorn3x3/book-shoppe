-- Use this file to define your SQL tables
-- The SQL in this file will be executed when you run `npm run setup-db`
DROP TABLE IF EXISTS authors;
DROP TABLE IF EXISTS books;



CREATE TABLE authors (
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  first_name VARCHAR,
  last_name VARCHAR,
  dob YEAR,
  pob VARCHAR,
  FOREIGN KEY (book_id) REFERENCES books(id)
);

CREATE TABLE books (
  id BIGINT GENERATED ALWAYS AS IDENTITY,
  title VARCHAR,
  released VARCHAR,
  FOREIGN KEY (author_id) REFERENCES author(id)
);

INSERT INTO authors (
  first_name,
  last_name,
  dob,
  pob,
 
)
VALUES 
  ('Moira', 'Rose', 1989, 'springfield'),
  ('Moira', 'Jude', 1989, 'springfield'),

;

INSERT INTO books (
title, 
released, 

)

VALUES 
  ('Red Badge of Courage', 'example 2'),

;
