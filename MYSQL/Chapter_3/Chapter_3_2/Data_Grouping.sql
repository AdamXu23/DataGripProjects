-- group by --
select Shohin_catalg,count(*)
from shop.shohin
group by Shohin_catalg;

select Buying_price,count(*)
from shop.shohin
group by Buying_price;

select Buying_price,count(*)
from shop.shohin
where  Shohin_catalg = '衣物'
group by Buying_price;

select Shohin_name,Buying_price,count(*)
from shop.shohin
group by Buying_price;

select Shohin_catalg as sc ,count(*)
from shop.shohin
group by sc;

select Shohin_catalg,count(*)
from shop.shohin
group by Shohin_catalg;

select Shohin_catalg,count(*)
from  shop.shohin
where  count(*) = 2
group by Shohin_catalg;