USE SOHC

select * from sys.tables;

IF NOT EXISTS (select * from sys.tables where name = 'PPID_Table')
create table PPID_Table
(
    ID      varchar(50) not null,
    Time_1  int not null,
    Time_2  int not null,
    Flow_1  int not null,
    Flow_2  int not null,
    CONSTRAINT pk_PPID_Table_Id PRIMARY KEY (Id),
    CONSTRAINT U_PPID_Table_ID unique (Id)
);

select * from sys.tables;