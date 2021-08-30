-- not--
select * from shop.shohin
where not Sell_Price >= 1000;
-- and --
select * from shop.shohin
where Shohin_catalg = '厨房用品'
and Sell_Price >= 3000;
-- or --
select * from shop.shohin
where Shohin_catalg = '厨房用品'
or Sell_Price >= 3000;
-- and (or)--
select * from shop.shohin
where Shohin_catalg = '辦公用品'
and (reg_Date = '2009-09-11'
    or reg_Date = '2009-09-20')