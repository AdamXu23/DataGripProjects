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