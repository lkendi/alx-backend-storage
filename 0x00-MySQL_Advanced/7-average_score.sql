--sql script that creates a stored procedure that computes
--the average score for a student
CREATE PROCEDURE ComputeAverageScoreForUser(IN user_id FLOAT)
BEGIN
    SELECT AVG(score) AS average_score
    FROM corrections
    WHERE corrections.user_id = user_id;
END