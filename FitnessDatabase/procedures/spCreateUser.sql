CREATE OR REPLACE PROCEDURE spCreateUser(uName VARCHAR(50), mail VARCHAR(50), pass VARCHAR(50))
LANGUAGE SQL
BEGIN ATOMIC
INSERT INTO users(username, email,password) VALUES(uName,mail,pass);
END;