/-- Create a new table called 'activityType' in schema 'fitnessfiends'
-- Drop the table if it already exists
IF OBJECT_ID('fitnessfiends.activityType', 'U') IS NOT NULL
DROP TABLE fitnessfiends.activityType
GO
-- Create the table in the specified schema
CREATE TABLE fitnessfiends.activityType
(
    activityTypeId INT NOT GENERATED ALWAYS AS IDENTITY PRIMARY KEY, -- primary key column
    -- specify more columns here
);
GO