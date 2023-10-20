insert into Device_Table values (newid(),'Foup_A','SPN00012'),
                                (newid(),'Foup_B','SPN00029'),
                                (newid(),'Car_A',null);

insert into Location_Table values (newid(),null),
                              (newid(),'STK_01'),
                              (newid(),'STK_02'),
                              (newid(),'STK_03'),
                              (newid(),'STK_04'),
                              (newid(),'AGV_01'),
                              (newid(),'AGV_02'),
                              (newid(),'Car_01'),
                              (newid(),'Car_02'),
                              (newid(),'Geek_01'),
                              (newid(),'Geek_02');

insert into Device_location values ('FBA4B408-1630-4C40-9220-6C9A96F496F9','64AC8405-34C7-491F-9CC0-4A5D878B0CD7'),
                              ('C4CB572C-AEB9-4CC5-B143-EC215E7437D2','89D42D14-9E71-4E7C-ACAC-BFBFC435724E'),
                              ('B8D3DD40-9761-42F0-8065-D1A38D15044C','2D2F84CE-9243-4B9A-8E4C-22D1774ADCDE');
insert into Job_Table values (newid(),'FBA4B408-1630-4C40-9220-6C9A96F496F9',getdate(),'64AC8405-34C7-491F-9CC0-4A5D878B0CD7'),
                              (newid(),'C4CB572C-AEB9-4CC5-B143-EC215E7437D2',getdate(),'89D42D14-9E71-4E7C-ACAC-BFBFC435724E'),
                              (newid(),'B8D3DD40-9761-42F0-8065-D1A38D15044C',getdate(),'2D2F84CE-9243-4B9A-8E4C-22D1774ADCDE');