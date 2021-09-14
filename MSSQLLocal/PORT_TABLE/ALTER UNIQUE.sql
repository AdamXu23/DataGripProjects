alter table Port_Table
add constraint U_Port_Table_EQ_NAME unique (EQ,Name);
ALTER TABLE Port_Table ADD UNIQUE (Id);
ALTER TABLE Port_Table ADD UNIQUE (IP);