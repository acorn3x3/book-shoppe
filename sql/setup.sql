-- Use this file to define your SQL tables
-- The SQL in this file will be executed when you run `npm run setup-db`
DROP TABLE IF EXISTS authors;
DROP TABLE IF EXISTS books;
DROP TABLE IF EXISTS authors_books;


CREATE TABLE authors (
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  first_name VARCHAR,
  last_name VARCHAR,
  dob VARCHAR,
  pob VARCHAR
  
);

CREATE TABLE books (
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  title VARCHAR,
  released VARCHAR
 
);

CREATE TABLE authors_books (
  id BIGINT GENERATED ALWAYS AS IDENTITY,
  authors_id BIGINT,
  books_id BIGINT,
  FOREIGN KEY (authors_id) REFERENCES authors(id),
  FOREIGN KEY (books_id) REFERENCES books(id)

 
);

INSERT INTO authors (
  first_name,
  last_name,
  dob,
  pob
 
)
VALUES 
  ('Moira', 'Rose', '1989', 'springfield'),
  ('Moira', 'Jude', '1989', 'springfield')

;

INSERT INTO books (
title, 
released 
)

VALUES 
  ('Red Badge of Courage', 'example 2')
;

INSERT INTO authors_books (authors_id, books_id) 
VALUES
(1,1),
(2,1)

;

