-- Port_Table
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
-- Foup_Table
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
-- Foup_Dispatch_List
IF NOT EXISTS (select * from sys.tables where name = 'Foup_Dispatch_List')
BEGIN
create table Foup_Dispatch_List
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
-- Foup_Current
IF NOT EXISTS (select * from sys.tables where name = 'Foup_Current')
BEGIN
create table Foup_Current
(
    Foup_Current_GUID       uniqueidentifier    not null,
    Foup_GUID     uniqueidentifier   not null,
    Foup_Current_DateTime   datetime2           not null,
    Port_GUID   uniqueidentifier   not null,

    CONSTRAINT FK_Foup_Current_GUID FOREIGN KEY (Foup_GUID) REFERENCES dbo.Foup_Table(Foup_GUID) ON DELETE CASCADE,
    CONSTRAINT FK_Port_Current_GUID FOREIGN KEY (Port_GUID) REFERENCES dbo.Port_Table(Port_GUID) ON DELETE CASCADE,
    CONSTRAINT PK_Foup_Current_GUID PRIMARY KEY (Foup_Current_GUID)
);
end;
-- Car_Table
IF NOT EXISTS (select * from sys.tables where name = 'Car_Table')
BEGIN
create table Car_Table
(
    Car_GUID       uniqueidentifier    not null,
    Car_Name     varchar(20)   not null,
    Car_SN   varchar(20)           not null,
    CONSTRAINT PK_Car_GUID PRIMARY KEY (Car_GUID)
);
end;
-- Car_Parking_Space
IF NOT EXISTS (select * from sys.tables where name = 'Car_Parking_Space')
BEGIN
create table Car_Parking_Space
(
    Parking_Space_GUID       uniqueidentifier    not null,
    Parking_Space_Name     varchar(20)   not null,
    Parking_Space_SN   varchar(20)           not null,
    CONSTRAINT PK_Car_Parking_Space_GUID PRIMARY KEY (Parking_Space_GUID)
);
end;
-- CAR_Dispatch_List
IF NOT EXISTS (select * from sys.tables where name = 'Car_Dispatch_List')
BEGIN
create table Car_Dispatch_List
(
    Dispatch_GUID       uniqueidentifier    not null,
    Dispatch_Name       varchar(20)         not null,
    Dispatch_DateTime   datetime2           not null,
    Car_GUID     uniqueidentifier   not null,
    Parking_Space_GUID     uniqueidentifier   not null,

    CONSTRAINT FK_CAR_Dispatch_List_Parking_Space_GUID FOREIGN KEY (Parking_Space_GUID) REFERENCES dbo.Car_Parking_Space(Parking_Space_GUID) ON DELETE CASCADE,
    CONSTRAINT FK_CAR_Dispatch_List_Car_GUID FOREIGN KEY (Car_GUID) REFERENCES dbo.Car_Table(Car_GUID) ON DELETE CASCADE,
    CONSTRAINT PK_CAR_Dispatch_GUID PRIMARY KEY (Dispatch_GUID)
);
end;
-- Car_Current
IF NOT EXISTS (select * from sys.tables where name = 'Car_Current')
BEGIN
create table Car_Current
(
    Car_Current_GUID       uniqueidentifier    not null,
    Car_GUID     uniqueidentifier   not null,
    Car_Current_DateTime   datetime2           not null,
    Parking_Space_GUID   uniqueidentifier   not null,

    CONSTRAINT FK_Car_Current_Parking_Space_GUID FOREIGN KEY (Parking_Space_GUID) REFERENCES dbo.Car_Parking_Space(Parking_Space_GUID) ON DELETE CASCADE,
    CONSTRAINT FK_Car_Current_Car_GUID FOREIGN KEY (Car_GUID) REFERENCES dbo.Car_Table(Car_GUID) ON DELETE CASCADE,
    CONSTRAINT PK_Car_Current_GUID PRIMARY KEY (Car_Current_GUID)
);
end;