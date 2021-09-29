/*创建表空间*/
create tablespace TABLESPACE_QCJ
/*表空间物理文件名称*/
datafile 'TABLESPACE_QCJ.dbf'
-- 这种方式指定表空间物理文件位置
-- datafile 'F:\APP\QIUCHANGJIN\ORADATA\ORCL\TABLESPACE_QCJ.dbf'
-- 大小 500M，每次 5M 自动增大，最大不限制
size 500M autoextend on next 5M maxsize unlimited;

 /*查询所有表空间物理位置*/
 select t1.name,t2.name from v$tablespace t1, v$datafile t2 where t1.ts# = t2.ts#;
