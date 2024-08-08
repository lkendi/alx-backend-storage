--script that creates an index on the table 'names'
-- and the 1st letter of 'name' and the 'score'
CREATE INDEX idx_name_first_score ON names(SUBSTR(name, 1, 1), score)
