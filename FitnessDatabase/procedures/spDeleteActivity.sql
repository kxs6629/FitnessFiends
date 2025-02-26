CREATE OR REPLACE PROCEDURE spDeleteActivity(int delIdent)
LANGUAGE SQL
BEGIN ATOMIC
    DELETE FROM
        activity
    WHERE 
        Ident = delIdent
END