/-- Create a new table called 'users' in schema 'fitnessfiends'
-- Drop the table if it already exists
IF OBJECT_ID('fitnessfiends.users', 'U') IS NOT NULL
DROP TABLE fitnessfiends.users
GO
-- Create the table in the specified schema
CREATE TABLE fitnessfiends.users
(
    usersId INT NOT GENERATED ALWAYS AS IDENTITY PRIMARY KEY, -- primary key column
    username VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR (50) NOT NULL UNIQUE,
    password VARCHAR(50) NOT NULL
    -- specify more columns here
);
GO