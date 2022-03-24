IF NOT EXISTS (select * from sys.tables where name = 'MFC_Table')
    BEGIN
create table MFC_Table
(
    MFC_ID                  uniqueidentifier    DEFAULT (newid())   not null ,
    MFC_Serial_Number       varchar(20)                             not null ,
    MFC_Firmware_ID         uniqueidentifier                        not null ,
    Control_mode            binary                                  not null ,
    PID_Kp                  binary                                  not null ,
    PID_Ti                  float                                   not null ,
    PID_Td                  float                                   not null ,
    Open_from_zero          binary                                  not null ,
    Normal_step             binary                                  not null ,
    Stable_situation        binary                                  not null ,
    Dynamic_display_factor  float                                   not null ,
    Static_display_factor   float                                   not null ,
    Exponential_smoothing   float                                   not null ,
    DT                      datetime2           default (getdate()) not null ,
    CONSTRAINT PK_MFC_ID_MFC_Table PRIMARY KEY (MFC_ID),
    constraint FK_MFC_Firmware_ID_To_MFC_Firmware_Table foreign key (MFC_Firmware_ID) references MFC_Firmware_Table(MFC_Firmware_ID)
);
end;


create view MFC_Firmware_View
    as select *
    from MFC_Firmware_Table a
    where DT = (select max(dt)from MFC_Firmware_Table b where a.Firmware_Name=b.Firmware_Name);
;