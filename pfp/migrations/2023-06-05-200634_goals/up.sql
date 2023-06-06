-- Your SQL goes here
CREATE TABLE
  goals (
    id serial NOT NULL,
    name character varying(255) NOT NULL,
    description text NOT NULL,
    complete boolean NOT NULL,
    CONSTRAINT goals_pkey PRIMARY KEY (id)
  )
