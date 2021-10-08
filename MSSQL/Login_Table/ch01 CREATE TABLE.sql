USE SOHC

select * from sys.tables;

IF NOT EXISTS (select * from sys.tables where name = 'Login_Table')
CREATE TABLE Login_Table (
    User_Name  VARCHAR (20)  NOT NULL,
    Password   VARCHAR (MAX) NOT NULL,
    Competence INT           NOT NULL,
    PRIMARY KEY (User_Name),
    UNIQUE (User_Name)
);

IF not EXISTS (select * from Login_Table where User_Name = 'Administrator')
insert into Login_Table values ('Administrator','AVEX1234',0);
IF not EXISTS (select * from Login_Table where User_Name = 'Administrator' and Competence = 0)
        UPDATE Login_Table
        SET Competence=0
        WHERE User_Name = 'Administrator';

select * from Login_Table;


