IF NOT EXISTS (select * from sys.tables where name = 'Color_')
BEGIN
create table Color_
(
    Color_ID         int not null ,
    Color_Name      varchar(10) not null ,
    CONSTRAINT PK_Color_ID PRIMARY KEY (Color_ID),
);
end;