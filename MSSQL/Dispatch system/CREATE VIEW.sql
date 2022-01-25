--Foup_Current_View

CREATE VIEW Foup_Current_View AS
select Foup_Current_GUID,
       Foup_Table.Foup_Name ,
       Foup_Current_DateTime,
       Port_Table.Port_Name
from Foup_Current
inner join Foup_Table on Foup_Current.Foup_GUID = Foup_Table.Foup_GUID
inner join Port_Table on Foup_Current.Port_GUID = Port_Table.Port_GUID;

--Foup_Dispatch_List_View

CREATE VIEW Foup_Dispatch_List_View AS
select Dispatch_GUID,
       Dispatch_Name,
       Dispatch_DateTime,
       Foup_Table.Foup_Name ,
       Port_Table.Port_Name
from Foup_Dispatch_List
inner join Foup_Table on Foup_Dispatch_List.Foup_GUID = Foup_Table.Foup_GUID
inner join Port_Table on Foup_Dispatch_List.Port_GUID = Port_Table.Port_GUID;

--Car_Current_View

CREATE VIEW Car_Current_View AS
select Car_Current_GUID,
       Car_Table.Car_Name,
       Car_Current_DateTime,
       Car_Parking_Space.Parking_Space_Name
from Car_Current
inner join Car_Table on Car_Current.Car_GUID = Car_Table.Car_GUID
inner join Car_Parking_Space on Car_Current.Parking_Space_GUID = Car_Parking_Space.Parking_Space_GUID;

--Car_Dispatch_List_View

CREATE VIEW Car_Dispatch_List_View AS
select Dispatch_GUID,
       Dispatch_Name,
       Dispatch_DateTime,
       Car_Table.Car_Name,
       Car_Parking_Space.Parking_Space_Name
from Car_Dispatch_List
inner join Car_Table on Car_Dispatch_List.Car_GUID = Car_Table.Car_GUID
inner join Car_Parking_Space on CAR_Dispatch_List.Parking_Space_GUID = Car_Parking_Space.Parking_Space_GUID;
