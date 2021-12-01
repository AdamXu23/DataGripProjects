select * from sys.tables ;

IF NOT EXISTS (select * from sys.tables where name = 'Foup_Log_List')
BEGIN
create table Foup_Log_List
(
    FLL_GUID   uniqueidentifier  not null default newid(),
    Id          int         not null,
    EQ          varchar(50) not null,
    Name        varchar(50) not null,
    IP          varchar(50) not null,
    Port        int         not null,
    O2_Enable   bit         not null,
    RH_Enable   bit         not null,
    Port_Enable bit         not null,
    FOUP_ID     varchar(20) not null,
    Arrive_Time datetime    not null,
    Recipe_ID   varchar(20) ,
    Recipe_T1   int,
    Recipe_T2   int,
    Recipe_F1   int,
    Recipe_F2   int,
    CONSTRAINT PK_FLL_GUID PRIMARY KEY (FLL_GUID),
);
end;