create schema arts;

create table "arts"."arts" (
   art_id serial PRIMARY KEY UNIQUE,
   art_name VARCHAR (50) NOT NULL
);