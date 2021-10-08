-- 建立測式資料庫
create database Family_Info
go

use Family_Info
go

-- 建立測試資料表
create table FAMILY (No    int,
      Name   nvarchar(50),
      Mobile_Phone varchar(20))
go

-- 新增測試資料
insert into FAMILY (No, Name, Mobile_Phone) values (1, 'Joe Smith',   '0955111111')
insert into FAMILY (No, Name, Mobile_Phone) values (2, 'Mary Smith',  '0955222222')
insert into FAMILY (No, Name, Mobile_Phone) values (3, 'Andy Smith',  '0955333333')
insert into FAMILY (No, Name, Mobile_Phone) values (4, 'Bill Smith',  '0955444444')
insert into FAMILY (No, Name, Mobile_Phone) values (5, 'Chris Smith', '0955555555')
go

-- 執行匯出作業：將測試資料由資料庫匯出 (Export) 到 C:\TEST\TEST_Result.csv
exec sp_configure 'show advanced options', 1
reconfigure
exec sp_configure 'xp_cmdshell', 1
reconfigure
go

exec xp_cmdshell 'bcp "select ''No'', ''Name'', ''Mobile_Phone'' UNION ALL select cast(No as varchar(20)), Name, Mobile_Phone from Family_Info.dbo.FAMILY" queryout "C:\TEST\TEST_Result.csv" -T -c -t,'
go

exec sp_configure 'show advanced options', 1
reconfigure
exec sp_configure 'xp_cmdshell', 0
reconfigure
go

