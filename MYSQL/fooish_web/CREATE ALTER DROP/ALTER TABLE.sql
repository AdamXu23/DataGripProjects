-- 增加欄位 (ADD COLUMN) --
ALTER TABLE customers ADD Discount VARCHAR(10);
-- 更改欄位資料型別 (ALTER COLUMN TYPE) --
-- MYSQL --
ALTER TABLE customers MODIFY COLUMN discount DECIMAL(18, 2);
-- 刪除欄位 (DROP COLUMN) --
ALTER TABLE customers DROP COLUMN Discount;