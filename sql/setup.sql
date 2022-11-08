-- Use this file to define your SQL tables
-- The SQL in this file will be executed when you run `npm run setup-db`
DROP TABLE IF EXISTS authors;
DROP TABLE IF EXISTS books;



CREATE TABLE authors (
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  first_name VARCHAR,
  last_name VARCHAR
  dob VARCHAR
  pob VARCHAR
);

CREATE TABLE books (
  id BIGINT GENERATED ALWAYS AS IDENTITY,
  title VARCHAR
  released YEAR
);

INSERT INTO authors (
  first_name,
  last_name,
  dob,
  pob
)
VALUES 
  ('Moira', 'Rose', 'example'),

;

INSERT INTO books (
\
)
