-- Drop the table if it already exists
DROP TABLE IF EXISTS activityType;

-- Create the table in the specified schema
CREATE TABLE activityType
(
    activityTypeId SERIAL PRIMARY KEY, -- primary key column
    typeName VARCHAR(50) NOT NULL,
    graphType INT NOT NULL
);