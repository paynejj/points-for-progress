-- Your SQL goes here
CREATE TABLE
  goals (
    id SERIAL PRIMARY KEY,
    name varchar(255) NOT NULL,
    description text NOT NULL,
    completed boolean NOT NULL
  )
