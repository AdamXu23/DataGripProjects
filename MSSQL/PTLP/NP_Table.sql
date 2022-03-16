IF NOT EXISTS (select * from sys.tables where name = 'NP_Table')
    BEGIN
create table NP_Table
(
    NP_ID                   uniqueidentifier    default (newid())   not null ,
    NP_Value                float                                   ,
    NP_Lower_Limit          float                                   ,
    DT                      datetime2           default (getdate()) not null ,
    CONSTRAINT PK_NP_ID_NP_Table PRIMARY KEY (NP_ID)
);
end;