--script that creates an index on the table 'names'
-- and the first letter of 'name'
CREATE INDEX idx_name_first ON names(SUBSTR(name, 1, 1))
