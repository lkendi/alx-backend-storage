--script that creates a function that divides 2 numbers
--and returns 0 if the second number is equal to zero.

CREATE FUNCTION SafeDiv(a INT, b INT)
RETURNS FLOAT
DETERMINISTIC
BEGIN
    DECLARE result FLOAT;
    IF b = 0 THEN
        SET result = 0;
    ELSE
        SET result = a/b;
    END IF;
    RETURN result;
END
