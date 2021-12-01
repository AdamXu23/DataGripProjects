insert into Foup_Log_Data values
((select FLL_GUID from Foup_Log_List WHERE FOUP_ID = 'AVEX0001' AND Arrive_Time = '2021-11-30 10:34:09.000'),
 20.9,
 58.1,
 35.2,
 convert(datetime, '2021-11-30 10:34:09', 120));
