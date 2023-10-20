IF NOT EXISTS (select * from sys.tables where name = 'Clarity_')
BEGIN
create table Clarity_
(
    Clarity_ID         int not null ,
    Clarity_Name      varchar(10) not null ,
    CONSTRAINT PK_Clarity_ID PRIMARY KEY (Clarity_ID),
);
end;