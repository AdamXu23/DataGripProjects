SELECT name, database_id, create_date
FROM sys.databases;

-- CREATE DATABASE SOHC;

/*SELECT name, database_id, create_date
FROM sys.databases
where name = 'SOHC';

DROP DATABASE SOHC;
*/

IF NOT EXISTS (select * from sys.databases where name = 'Work_Plan')
CREATE DATABASE Work_Plan;
