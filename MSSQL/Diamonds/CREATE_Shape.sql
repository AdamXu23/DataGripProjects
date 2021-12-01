IF NOT EXISTS (select * from sys.tables where name = 'Shape_')
BEGIN
create table Shape_
(
    Shape_ID         int not null ,
    Shape_Name      varchar(10) not null,
    CONSTRAINT PK_Port_Table_Port_GUID PRIMARY KEY (Shape_ID),
);
end;