-- script that creates a stored procedure that computes and store the
--average weighted score for all students
CREATE PROCEDURE ComputeAverageWeightedScoreForUsers()
BEGIN
    SELECT SUM(corrections.score * corrections.weight) / SUM(corrections.weight) AS average_score
END