USE SOHC

select * from sys.tables;

IF NOT EXISTS (select * from sys.tables where name = 'Port_Table')
BEGIN
create table Port_Table
(
    Port_GUID   varchar(50),
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
    CONSTRAINT PK_Port_Table_Port_GUID PRIMARY KEY (Port_GUID),
    CONSTRAINT U_Port_Table_EQ_NAME unique (EQ, Name),
    CONSTRAINT U_Port_Table_IP unique (IP)
);
end;
