-- UNIQUE 唯一限制 (SQL UNIQUE Constraint) --
CREATE TABLE customer (
  C_Id INT NOT NULL UNIQUE,
  Name VARCHAR(50) NOT NULL,
  Address VARCHAR(255),
  Phone VARCHAR(20)
);

-- 刪除資料表 (DROP TABLE) --
DROP TABLE customer;

-- UNIQUE 唯一限制 (SQL UNIQUE Constraint) --
CREATE TABLE customer (
  C_Id INT NOT NULL,
  Name VARCHAR(50) NOT NULL,
  Address VARCHAR(255),
  Phone VARCHAR(20),
  UNIQUE (C_Id)
);

-- 刪除資料表 (DROP TABLE) --
DROP TABLE customer;

-- 替唯一鍵命名與多欄位的唯一限制
-- 我們限制 C_Id 及 Name 這兩個欄位共同唯一，CONSTRAINT 後面接著的即是此唯一鍵的名稱。

CREATE TABLE customer (
  C_Id INT NOT NULL,
  Name VARCHAR(50) NOT NULL,
  Address VARCHAR(255),
  Phone VARCHAR(20),
  CONSTRAINT u_Customer_Id UNIQUE (C_Id, Name)
);
INSERT INTO customer (C_Id, Name, Address, Phone)
VALUES (3, '李三', 'ZZ路300號', '07-12345678');
INSERT INTO customer (C_Id, Name, Address, Phone)
VALUES (4, '李三', 'ZZ路300號', '07-12345678');
INSERT INTO customer (C_Id, Name, Address, Phone)
VALUES (4, '李四', 'ZZ路300號', '07-12345678');
INSERT INTO customer (C_Id, Name, Address, Phone)
VALUES (4, '李四', 'ZZ路300號', '07-12345679');

-- 僅刪除資料表內容，但保留結構 (TRUNCATE TABLE) --
TRUNCATE TABLE customer;
-- 更改資料表限制 ALTER TABLE...
ALTER TABLE customer ADD UNIQUE (C_Id);

-- 刪除資料表 (DROP TABLE) --
DROP TABLE customer;

-- 替唯一鍵命名與多欄位的唯一限制
CREATE TABLE customer (
  C_Id INT NOT NULL,
  Name VARCHAR(50) NOT NULL,
  Address VARCHAR(255),
  Phone VARCHAR(20)
);
-- 替唯一鍵命名與多欄位的唯一限制：
ALTER TABLE customer
ADD CONSTRAINT u_Customer_Id UNIQUE (C_Id, Name);

-- 移除資料表限制 ALTER TABLE...

ALTER TABLE customer DROP INDEX u_Customer_Id;
ALTER TABLE customer DROP INDEX C_Id;