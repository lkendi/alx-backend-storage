--script that creates a stored procedure that computes and store the
--average weighted score for a student
CREATE PROCEDURE ComputeAverageWeightedScoreForUser(IN user_id INT)
BEGIN
    SELECT SUM(corrections.score * corrections.weight) / SUM(corrections.weight) AS average_score
    WHERE corrections.user_id = user_id
END
