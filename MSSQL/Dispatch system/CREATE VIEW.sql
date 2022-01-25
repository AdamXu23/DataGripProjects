--Device_location_View

CREATE VIEW Device_location_View AS
select Device_Table.Device_Name,
       Device_Table.Device_SN ,
       Location_Table.Location_Name
from Device_location
inner join Device_Table on Device_location.Device_GUID = Device_Table.Device_GUID
inner join Location_Table on Device_location.Location_GUID = Location_Table.Location_GUID;

--Job_Table_View

CREATE VIEW Job_Table_View AS
select Job_GUID,Device_Table.Device_Name,
       Device_Table.Device_SN ,
       Execution_Time,
       Location_Table.Location_Name
from Job_Table
inner join Device_Table on Job_Table.Device_GUID = Device_Table.Device_GUID
inner join Location_Table on Job_Table.Location_GUID = Location_Table.Location_GUID;
