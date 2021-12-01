IF NOT EXISTS (select * from sys.tables where name = 'Diamonds_')
BEGIN
create table Diamonds_
(
    Diamonds_ID         int not null ,
    Shape_      int not null ,
    Price_      int not null ,
    Carat_      int not null ,
    Cut_        int not null ,
    Color_      int not null ,
    Clarity_    int not null,
    CONSTRAINT PK_Diamonds_ID PRIMARY KEY (Diamonds_ID),
);
end;