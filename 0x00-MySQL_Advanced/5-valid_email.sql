--script that creates a trigger that resets the attribute
--'valid_email' only when the email has changed
CREATE TRIGGER reset_valid_email
AFTER UPDATE ON users
BEGIN
    UPDATE users SET valid_email = 0
    WHERE id = OLD.id

END;
