IF NOT EXISTS (select * from sys.tables where name = 'SECS_LOG')
BEGIN
CREATE TABLE SECS_LOG (
    Date_time       datetime2 ,
    HostAgent_Type  int ,
    S               int ,
    F               int ,
    Content         VARCHAR (max),
    ErrorCode       int
    CONSTRAINT FK_HostAgent_Type FOREIGN KEY (HostAgent_Type) REFERENCES dbo.HostAgent_Type(Type) ,
    CONSTRAINT FK_S_F FOREIGN KEY (S,F) REFERENCES dbo.SECS_Description(S,F) ,
    CONSTRAINT FK_ErrorCode FOREIGN KEY (ErrorCode) REFERENCES dbo.SECS_ErrorCode(ErrorCode)
);
end;


