CREATE VIEW Diamonds_Table AS
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
inner join Clarity_ on Diamonds_.Carat_ = Clarity_.Clarity_ID;

CREATE VIEW Diamonds_SI2_Table AS
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
inner join Clarity_ on Diamonds_.Carat_ = Clarity_.Clarity_ID
where Carat_ = 0;

