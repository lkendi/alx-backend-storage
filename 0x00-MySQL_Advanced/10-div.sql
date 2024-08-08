--script that creates a function that divides 2 numbers
--and returns 0 if the second number is equal to zero.

DELIMITER @@

DROP FUNCTION IF EXISTS SafeDiv;
CREATE FUNCTION SafeDiv(a INT, b INT)
RETURNS FLOAT
DETERMINISTIC
BEGIN
    RETURN (IF (b = 0, 0, a / b));
END @@

DELIMITER;
