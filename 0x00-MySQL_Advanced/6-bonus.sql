--script that creates a stroed procedure
-- that adds a new correction for a student
CREATE PROCEDURE AddBonus(IN user_id INT, IN project_name VARCHAR(255), IN score INT)
BEGIN
    INSERT INTO corrections(user_id, project_name, score) VALUES (user_id, project_name, score)
END
