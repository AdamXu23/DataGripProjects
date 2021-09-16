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
