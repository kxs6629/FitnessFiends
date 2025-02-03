CREATE OR REPLACE PROCEDURE spCreateActivityType(typeName VARCHAR(50),graphType INT)
LANGUAGE SQL
BEGIN ATOMIC
INSERT INTO activityType(typeName,graphType) VALUES (typeName,graphType);
END;