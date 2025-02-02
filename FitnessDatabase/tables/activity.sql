-- Drop the table if it exists
DROP TABLE IF EXISTS activity;

-- Create the table in the specified schema
CREATE TABLE activity
(
    activityId SERIAL PRIMARY KEY, -- primary key column
    activityDate TIMESTAMP NOT NULL,
    activityName VARCHAR (50) NOT NULL,
    weight INT,
    reps INT,
    activitySet INT,
    duration TIME,
    elevation INT,
    quantity INT,
    notes VARCHAR(250),
    activityTypeId INT NOT NULL, -- foreign key
    usersId INT NOT NULL, -- forerign key

    CONSTRAINT activity_activityType_activityTypeId_fkey
        FOREIGN KEY (activityTypeId) 
        REFERENCES activityType(activityTypeId)
        ON UPDATE CASCADE 
        ON DELETE CASCADE,
    
    CONSTRAINT activity_users_userId_fkey  
        FOREIGN KEY (usersId) 
        REFERENCES users(usersID)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);