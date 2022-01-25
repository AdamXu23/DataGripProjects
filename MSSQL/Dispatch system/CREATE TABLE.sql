IF NOT EXISTS (select * from sys.tables where name = 'Port_Table')
BEGIN
create table Port_Table
(
    Port_GUID   uniqueidentifier   not null,
    Port_Name   varchar(20)        not null,
    Port_SN     varchar(20),
    CONSTRAINT U_Port_Name unique (Port_Name),
    CONSTRAINT PK_Port_GUID PRIMARY KEY (Port_GUID)
);
end;

IF NOT EXISTS (select * from sys.tables where name = 'Foup_Table')
BEGIN
create table Foup_Table
(
    Foup_GUID   uniqueidentifier   not null,
    Foup_Name   varchar(20)        not null,
    Foup_SN     varchar(20),
    CONSTRAINT U_Foup_Name unique (Foup_Name),
    CONSTRAINT PK_Foup_GUID PRIMARY KEY (Foup_GUID)
);
end;

IF NOT EXISTS (select * from sys.tables where name = 'Dispatch_List')
BEGIN
create table Dispatch_List
(
    Dispatch_GUID       uniqueidentifier    not null,
    Dispatch_Name       varchar(20)         not null,
    Dispatch_DateTime   datetime2           not null,
    Foup_GUID     uniqueidentifier   not null,
    Port_GUID   uniqueidentifier   not null,

    CONSTRAINT FK_Foup_GUID FOREIGN KEY (Foup_GUID) REFERENCES dbo.Foup_Table(Foup_GUID) ON DELETE CASCADE,
    CONSTRAINT FK_Port_GUID FOREIGN KEY (Port_GUID) REFERENCES dbo.Port_Table(Port_GUID) ON DELETE CASCADE,

    CONSTRAINT PK_Dispatch_GUID PRIMARY KEY (Dispatch_GUID)
);
end;