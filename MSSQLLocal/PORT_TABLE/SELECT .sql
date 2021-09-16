select * from Port_Table;

select * from Port_Table WHERE ID = 7 OR (EQ = 'SOHC000' AND Name = '001');

select
       ID,
       EQ,
       Name,
       IP,
       Port,
       convert(varchar(10),null) Foup_Status ,
       convert(varchar(20),null) FOUP_ID,
       convert(varchar(20),null) Lot_ID,
       convert(varchar(20),null) Recipe_ID,
       convert(varchar(20),null) Material_ID,
       convert(datetime,null) Arrive_Time,
       convert(float,null) Flow_Value,
       convert(float,null) Humidity_Value,
       convert(float,null) O2_Value,
       convert(varchar(10),null) Access_Mode,
       convert(varchar(20),null) Reservation_State,
       convert(varchar(20),null) Association_State,
       convert(varchar(20),null) Transfer_State,
       O2_Enable,
       RH_Enable,
       color_a,
       color_r,
       color_g,
       color_b,
       Port_Enable
from Port_Table;