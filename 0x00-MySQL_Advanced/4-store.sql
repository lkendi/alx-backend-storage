--script that creates a trigger that decreases the qty
--of an item after adding a new order
CREATE TRIGGER decrease_stock
AFTER INSERT ON orders FOR EACH ROW
UPDATE items SET quantity = quantity - NEW.number
WHERE name = NEW.item_name;

