SELECT *
FROM Diamonds_;

select diamonds_id,
       Shape_Name ,
       price_,
       Carat_,
       Cut_Name,
       Color_Name,
       Clarity_Name
from Diamonds_
inner join Shape_ on Diamonds_.shape_ = Shape_.Shape_ID
inner join Cut_ on Diamonds_.Cut_ = Cut_.Cut_ID
inner join Color_ on Diamonds_.Color_ = Color_.Color_ID
inner join Clarity_ on Diamonds_.Clarity_ = Clarity_.Clarity_ID
where Clarity_ = 0;

select diamonds_id,
       Shape_ ,
       price_,
       Carat_,
       Cut_,
       Clarity_
from Diamonds_
where  Diamonds_.Clarity_ in ( SELECT Clarity_ID
                                    FROM Clarity_
                                    WHERE Clarity_.Clarity_ID = 0);

select diamonds_id,
       Shape_ ,
       price_,
       Carat_,
       Cut_,
       Color_,
       Clarity_Name
from Diamonds_
inner join Clarity_ on Diamonds_.Clarity_ = Clarity_.Clarity_ID
where Clarity_ = 0;

select diamonds_id,
       Shape_Name ,
       price_,
       Carat_,
       Cut_Name,
       Color_Name,
       Clarity_Name
from (select * from Diamonds_ where Carat_ = 0) as ds
inner join Shape_ on ds.shape_ = Shape_.Shape_ID
inner join Cut_ on ds.Cut_ = Cut_.Cut_ID
inner join Color_ on ds.Color_ = Color_.Color_ID
inner join Clarity_ on ds.Carat_ = Clarity_.Clarity_ID;

select * from Diamonds_SI2_Table;

select *
from Diamonds_
where Carat_ = 0;

crea