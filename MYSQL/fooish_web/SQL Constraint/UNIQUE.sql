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