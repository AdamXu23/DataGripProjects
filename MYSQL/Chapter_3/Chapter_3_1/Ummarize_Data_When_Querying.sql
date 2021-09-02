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
-- 先排除重複值在計算 --
select count(distinct Shohin_catalg)
from shop.shohin;
-- 先計算在排除重複值 --
select distinct count(Shohin_catalg)
from shop.shohin;