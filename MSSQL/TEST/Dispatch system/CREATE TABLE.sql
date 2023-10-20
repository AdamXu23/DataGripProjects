-- Device_Table
IF NOT EXISTS (select * from sys.tables where name = 'Device_Table')
BEGIN
create table Device_Table
(
    Device_GUID uniqueidentifier    not null,
    Device_Name varchar(20)         not null,
    Device_SN   varchar(20)
    CONSTRAINT PK_Device_GUID PRIMARY KEY (Device_GUID)
);
end;

IF NOT EXISTS (select * from sys.tables where name = 'Location_Table')
BEGIN
create table Location_Table
(
    Location_GUID uniqueidentifier    not null,
    Location_Name varchar(20)
    CONSTRAINT PK_Location_GUID PRIMARY KEY (Location_GUID)
);
end;

IF NOT EXISTS (select * from sys.tables where name = 'Job_Table')
BEGIN
create table Job_Table
(
    Job_GUID        uniqueidentifier    not null,
    Device_GUID     uniqueidentifier    not null,
    Execution_Time  datetime2           not null,
    Location_GUID       uniqueidentifier    not null,
    CONSTRAINT FK_Device_GUID FOREIGN KEY (Device_GUID) REFERENCES dbo.Device_Table(Device_GUID) ON DELETE CASCADE,
    CONSTRAINT FK_Location_GUID FOREIGN KEY (Location_GUID) REFERENCES dbo.Location_Table(Location_GUID) ON DELETE CASCADE,
    CONSTRAINT PK_Job_GUID PRIMARY KEY (Job_GUID)
);
end;

IF NOT EXISTS (select * from sys.tables where name = 'Device_location')
BEGIN
create table Device_location
(
    Device_GUID uniqueidentifier    not null,
    Location_GUID uniqueidentifier    not null,
    CONSTRAINT FK_Device_location_Device_GUID FOREIGN KEY (Device_GUID) REFERENCES dbo.Device_Table(Device_GUID) ON DELETE CASCADE,
    CONSTRAINT FK_Device_location_Port_GUID FOREIGN KEY (Location_GUID) REFERENCES dbo.Location_Table(Location_GUID) ON DELETE CASCADE
);
end;