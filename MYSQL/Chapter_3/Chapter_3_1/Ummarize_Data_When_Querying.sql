-- COUNT --
select COUNT(*),COUNT(Buying_price)
from shop.shohin;
-- SUM --
select sum(Sell_Price),sum(Buying_price)
from shop.shohin;
-- AGV --
select avg(Sell_Price),avg(Buying_price)
from shop.shohin;
-- MAX MIN --
select max(reg_Date),min(reg_Date)
from shop.shohin;
