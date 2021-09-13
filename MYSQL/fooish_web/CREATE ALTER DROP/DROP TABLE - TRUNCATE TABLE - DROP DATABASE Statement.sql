INSERT INTO customers (C_Id, Name, Address, Phone)
VALUES (3, '李三', 'ZZ路300號', '07-12345678');
-- 僅刪除資料表內容，但保留結構 (TRUNCATE TABLE) --
TRUNCATE TABLE customers;
-- 刪除資料表 (DROP TABLE) --
DROP TABLE customers;
-- 刪除資料庫 (DROP DATABASE) --
DROP DATABASE foo;
