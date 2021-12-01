IF NOT EXISTS (select * from sys.tables where name = 'Foup_Log_Data')
BEGIN
create table Foup_Log_Data
(
    FLL_GUID    uniqueidentifier    not null,
    O2_Value    float,
    RH_Value    float,
    Flow_Value  float                 not null,
    DateTime    datetime2           not null
);
end;