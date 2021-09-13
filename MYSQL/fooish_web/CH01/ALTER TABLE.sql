-- 增加欄位 (ADD COLUMN) --
ALTER TABLE customers ADD Discount VARCHAR(10);
-- 更改欄位資料型別 (ALTER COLUMN TYPE) --
ALTER TABLE customers ALTER COLUMN Discount  DECIMAL(18, 2);