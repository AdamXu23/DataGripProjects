IF NOT EXISTS (select * from sys.tables where name = 'Set_Table')
    BEGIN
create table Set_Table
(
    Set_ID                  uniqueidentifier    DEFAULT (newid())   not null ,
    MFC_Set_Value           float                                   ,
    EP_Set_Value            float                                   ,
    EP_Lower_Limit_Range    float                                   ,
    EP_Upper_Limit_Range    float                                   ,
    EP_Test_Time            int                                     ,
    NP_Lower_Limit_Range    float                                   ,
    NP_Test_Time            int                                     ,
    DT                      datetime2           default (getdate()) not null ,
    CONSTRAINT PK_Set_ID_Set_Table PRIMARY KEY (Set_ID)
);
end;

create view Set_View
    as select *
    from Set_Table
    where DT = (select max(dt)from Set_Table);
;