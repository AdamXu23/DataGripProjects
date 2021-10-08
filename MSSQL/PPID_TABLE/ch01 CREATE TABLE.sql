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
    CONSTRAINT pk_PPID_Table_Id PRIMARY +KEY (Id),
    CONSTRAINT U_PPID_Table_ID unique (Id)
);


IF not EXISTS (select * from PPID_Table )
    insert into PPID_Table values ('PPID20',600,600,350,80);
select * from sys.tables;