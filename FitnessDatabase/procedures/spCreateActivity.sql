CREATE OR REPLACE PROCEDURE spCreateActivity(
    activityDate TIMESTAMP,
    activityName VARCHAR (50),
    activityTypeId INT, -- foreign key
    usersId INT,
    weight INT DEFAULT NULL,
    reps INT DEFAULT NULL,
    activitySet INT DEFAULT NULL,
    duration TIME DEFAULT NULl,
    elevation INT DEFAULT NULL,
    quantity INT DEFAULT NULL,
    notes VARCHAR(250) DEFAULT NULL
)

LANGUAGE SQL
BEGIN ATOMIC
INSERT INTO activity(
    activityDate,
    activityName,
    weight,
    reps,
    activitySet,
    duration,
    elevation,
    quantity,
    notes,
    activityTypeId,
    usersId
    ) 
VALUES (
    activityDate,
    activityName,
    weight,
    reps,
    activitySet,
    duration,
    elevation,
    quantity,
    notes,
    activityTypeId, -- foreign key
    usersId
);
END;