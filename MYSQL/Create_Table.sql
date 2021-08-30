create table Shohin
(
    Shohin_id       char(4)         not null ,
    Shohin_name     varchar(100)    not null ,
    Shohin_catalg   varchar(32)     not null ,
    Sell_Price      integer ,
    Buying_price    integer ,
    reg_Date        date    ,
    primary key (Shohin_id)
)