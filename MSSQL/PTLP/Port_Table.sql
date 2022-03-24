IF NOT EXISTS (select * from sys.tables where name = 'Port_Table')
    BEGIN
create table Port_Table
(
    Port_ID                 uniqueidentifier    default (newid())   not null ,
    Port_Serial_Number      varchar(20)                             not null ,
    Set_ID                  uniqueidentifier                        ,
    MFC_ID                  uniqueidentifier                        ,
    RH_ID                   uniqueidentifier                        ,
    NP_ID                   uniqueidentifier                        ,
    EP_ID                   uniqueidentifier                        ,
    Employee_ID             int                                     not null ,
    DT                      datetime2           default (getdate()) not null ,
    CONSTRAINT PK_Port_ID_Port_Table PRIMARY KEY (Port_ID),
    constraint FK_SET_ID_To_SET_Table foreign key (Set_ID) references Set_Table(Set_ID),
    constraint FK_MFC_ID_To_MFC_Table foreign key (MFC_ID) references MFC_Table(MFC_ID),
    constraint FK_RH_ID_To_RH_Table foreign key (RH_ID) references RH_Table(RH_ID),
    constraint FK_NP_ID_To_NP_Table foreign key (NP_ID) references NP_Table(NP_ID),
    constraint FK_EP_ID_To_EP_Table foreign key (EP_ID) references EP_Table(EP_ID),
    constraint FK_Employee_ID_To_Employee_Table foreign key (Employee_ID) references Employee_Table(Employee_ID)
);
end;

create view Port_Class_View
    as select *
    from Port_Class_Table a
    where DT = (select  max(DT) from Port_Class_Table b where  a.Port_Class_Name=b.Port_Class_Name)
    order by Port_Class_Name    ;
