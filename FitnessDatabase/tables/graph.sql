-- Create a new table called 'graph' in schema 'fitnessfiends'
-- Drop the table if it already exists
DROP TABLE IF EXISTS graph;
-- Create the table in the specified schema

CREATE TABLE graph
(
    graphId SERIAL PRIMARY KEY, -- primary key column
    graphName VARCHAR(50) NOT NULL,
    toggleable INT NOT NULL,
    ColNum INT NOT NULL
);