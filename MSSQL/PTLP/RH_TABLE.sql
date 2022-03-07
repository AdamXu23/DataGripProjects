IF NOT EXISTS (select * from sys.tables where name = 'RH_Table')
    BEGIN
create table RH_Table
(
    RH_ID                   uniqueidentifier    DEFAULT (newid())   not null ,
    RH_Serial_Number        varchar(20)                             not null ,
    RH_Firmware             varchar(20)                             not null ,
    RH_mode                 varchar(20)                             not null ,
    DT                      datetime2           default (getdate()) not null ,
    CONSTRAINT PK_RH_ID_RH_Table PRIMARY KEY (RH_ID)
);
end;