-- group by --
select Shohin_catalg,count(*)
from shop.shohin
group by Shohin_catalg;

select Buying_price,count(*)
from shop.shohin
group by Buying_price;