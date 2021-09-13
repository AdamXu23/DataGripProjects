-- NOT NULL 限制 (SQL NOT NULL Constraint) --
CREATE TABLE customer (
  C_Id INT NOT NULL,
  Name VARCHAR(50) NOT NULL,
  Address VARCHAR(255),
  Phone VARCHAR(20)
);

-- 刪除資料表 (DROP TABLE) --
DROP TABLE customer;