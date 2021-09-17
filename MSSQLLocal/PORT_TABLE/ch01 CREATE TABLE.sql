USE SOHC

select * from sys.tables;

IF NOT EXISTS (select * from sys.tables where name = 'Port_Table')
create table Port_Table
(
    Id          int         not null,
    EQ          varchar(50) not null,
    Name        varchar(50) not null,
    IP          varchar(50) not null,
    Port        int         not null,
    O2_Enable   bit,
    RH_Enable   bit,
    color_A     int         not null,
    color_R     int         not null,
    color_G     int         not null,
    color_B     int         not null,
    Port_Enable bit,
    CONSTRAINT pk_Port_Table_Id PRIMARY KEY (Id),
    CONSTRAINT U_Port_Table_ID unique (Id),
    CONSTRAINT U_Port_Table_EQ_NAME unique (EQ, Name),
    CONSTRAINT U_Port_Table_IP unique (IP)
);

select * from sys.tables;

IF not EXISTS (select * from Port_Table )
insert into Port_Table values (0,'EQ','000','192.168.127.250',950,1,1,255,255,255,0,1);