insert into Port_Table values (newid(),'STK01','STK00001'),
                              (newid(),'STK02','STK00002'),
                              (newid(),'STK03','STK00003'),
                              (newid(),'STK04','STK00004'),
                              (newid(),'AGV01','AGV00001'),
                              (newid(),'AGV02','AGV00002'),
                              (newid(),'CAR01','CAR00001'),
                              (newid(),'CAR02','CAR00002')
                              ;

insert into Foup_Table values (newid(),'A','SPN00012'),
                              (newid(),'B','SPN00029')
                              ;

insert into Foup_Current values (newid(),'5FE62823-F52A-4221-9CA2-C45F15CC9925',GETDATE(),'371775F4-EB5B-4D86-A3F5-8BC4E3EB5BA7'),
                                (newid(),'0278C547-E44A-4901-A663-CBE3012FAFEB',GETDATE(),'DF08F023-B9EA-4D38-BD1F-5F4B0FCF18B7')
                              ;

insert into Car_Table values (newid(),'CART1','CART0001')
                              ;

insert into Car_Parking_Space values (newid(),'CARP1','CARP0001'),
                                (newid(),'CARP2','CARP0002')
                              ;

insert into Car_Current values (newid(),'18B1C732-7292-4EC1-BFF7-5AC53F2F9E86',GETDATE(),'9FF12E87-B21A-4236-BC03-A33AC6FC855A');