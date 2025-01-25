/-- Create a new table called 'graph' in schema 'fitnessfiends'
-- Drop the table if it already exists
IF OBJECT_ID('fitnessfiends.graph', 'U') IS NOT NULL
DROP TABLE fitnessfiends.graph
GO
-- Create the table in the specified schema
CREATE TABLE fitnessfiends.graph
(
    graphId INT NOT GENERATED ALWAYS AS IDENTITY PRIMARY KEY, -- primary key column
    -- specify more columns here
);
GO