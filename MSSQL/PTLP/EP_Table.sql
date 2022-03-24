IF NOT EXISTS (select * from sys.tables where name = 'EP_Table')
    BEGIN
create table EP_Table
(
    EP_ID                   uniqueidentifier    default (newid())   not null ,
    EP_Value                float                                    ,
    EP_Lower_Limit          float                                    ,
    EP_Upper_Limit          float                                    ,
    DT                      datetime2           default (getdate()) not null ,
    CONSTRAINT PK_EP_ID_EP_Table PRIMARY KEY (EP_ID)
);
end;