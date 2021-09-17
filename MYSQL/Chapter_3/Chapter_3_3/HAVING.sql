select Shohin_catalg,count(*)
from shop.shohin
group by Shohin_catalg
having count(*)=2;

select Shohin_catalg,count(*)
from shop.shohin
group by Shohin_catalg;

select Shohin_catalg,avg(Sell_Price)
from shop.shohin
group by Shohin_catalg;

select Shohin_catalg,avg(Sell_Price)
from shop.shohin
group by Shohin_catalg
having avg(Sell_Price) >= 2500;