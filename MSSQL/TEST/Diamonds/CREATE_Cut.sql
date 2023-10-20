IF NOT EXISTS (select * from sys.tables where name = 'Cut_')
BEGIN
create table Cut_
(
    Cut_ID         int not null ,
    Cut_Name      varchar(10) not null,
    CONSTRAINT PK_Cut_ID PRIMARY KEY (Cut_ID),
);
end;