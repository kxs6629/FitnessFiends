/-- Create a new table called 'activity' in schema 'fitnessfiends'
-- Drop the table if it already exists
IF OBJECT_ID('fitnessfiends.activity', 'U') IS NOT NULL
DROP TABLE fitnessfiends.activity
GO
-- Create the table in the specified schema
CREATE TABLE fitnessfiends.activity
(
    activityId INT NOT GENERATED ALWAYS AS IDENTITY PRIMARY KEY, -- primary key column
    -- specify more columns here
);
GO