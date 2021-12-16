
IF NOT EXISTS (select * from sys.tables where name = 'HostAgent_Type')
    BEGIN
        CREATE TABLE HostAgent_Type (
        Type  int  NOT NULL ,
        Annotation   VARCHAR (50) NOT NULL,
        PRIMARY KEY (Type)
        );
INSERT INTO HostAgent_Type (Type, Annotation) VALUES (0, 'OnConnect');
INSERT INTO HostAgent_Type (Type, Annotation) VALUES (1, 'OnDisconnect');
INSERT INTO HostAgent_Type (Type, Annotation) VALUES (2, 'OnError');
INSERT INTO HostAgent_Type (Type, Annotation) VALUES (3, 'OnWarning');
INSERT INTO HostAgent_Type (Type, Annotation) VALUES (4, 'OnMonitor');
INSERT INTO HostAgent_Type (Type, Annotation) VALUES (5, 'OnPrimaryIn');
INSERT INTO HostAgent_Type (Type, Annotation) VALUES (6, 'OnPrimaryOut');
INSERT INTO HostAgent_Type (Type, Annotation) VALUES (7, 'OnSecondaryIn');
INSERT INTO HostAgent_Type (Type, Annotation) VALUES (8, 'OnSecondaryOut');
INSERT INTO HostAgent_Type (Type, Annotation) VALUES (9, 'System_LOG');
end ;