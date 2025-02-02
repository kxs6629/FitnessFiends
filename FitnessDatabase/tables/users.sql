-- Create a new table called 'users' in schema 'fitnessfiends'
-- Drop the table if it already exists
DROP TABLE IF EXISTS users;
-- Create the table in the specified schema
CREATE TABLE users
(
    usersId SERIAL PRIMARY KEY, -- primary key column
    username VARCHAR(50) UNIQUE NOT NULL,
    email VARCHAR (50) UNIQUE NOT NULL,
    --password column will have to change to accomodate encrpytion
    password VARCHAR(50) UNIQUE NOT NULL
);