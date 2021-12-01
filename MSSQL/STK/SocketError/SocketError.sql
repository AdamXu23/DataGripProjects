IF NOT EXISTS (select * from sys.tables where name = 'SocketError')
    BEGIN
        CREATE TABLE SocketError (
        ErrorCode  int  NOT NULL ,
        Annotation   VARCHAR (50) NOT NULL,
        PRIMARY KEY (Annotation)
        );
INSERT INTO SocketError (ErrorCode, Annotation) VALUES (10013, 'AccessDenied');
INSERT INTO SocketError (ErrorCode, Annotation) VALUES (10048, 'AddressAlreadyInUse');
INSERT INTO SocketError (ErrorCode, Annotation) VALUES (10047, 'AddressFamilyNotSupported');
INSERT INTO SocketError (ErrorCode, Annotation) VALUES (10049, 'AddressNotAvailable');
INSERT INTO SocketError (ErrorCode, Annotation) VALUES (10037, 'AlreadyInProgress');
INSERT INTO SocketError (ErrorCode, Annotation) VALUES (10053, 'ConnectionAborted');
INSERT INTO SocketError (ErrorCode, Annotation) VALUES (10061, 'ConnectionRefused');
INSERT INTO SocketError (ErrorCode, Annotation) VALUES (10054, 'ConnectionReset');
INSERT INTO SocketError (ErrorCode, Annotation) VALUES (10039, 'DestinationAddressRequired');
INSERT INTO SocketError (ErrorCode, Annotation) VALUES (10101, 'Disconnecting');
INSERT INTO SocketError (ErrorCode, Annotation) VALUES (10014, 'Fault');
INSERT INTO SocketError (ErrorCode, Annotation) VALUES (10064, 'HostDown');
INSERT INTO SocketError (ErrorCode, Annotation) VALUES (11001, 'HostNotFound');
INSERT INTO SocketError (ErrorCode, Annotation) VALUES (10065, 'HostUnreachable');
INSERT INTO SocketError (ErrorCode, Annotation) VALUES (10036, 'InProgress');
INSERT INTO SocketError (ErrorCode, Annotation) VALUES (10004, 'Interrupted');
INSERT INTO SocketError (ErrorCode, Annotation) VALUES (10022, 'InvalidArgument');
INSERT INTO SocketError (ErrorCode, Annotation) VALUES (997, 'IOPending');
INSERT INTO SocketError (ErrorCode, Annotation) VALUES (10056, 'IsConnected');
INSERT INTO SocketError (ErrorCode, Annotation) VALUES (10040, 'MessageSize');
INSERT INTO SocketError (ErrorCode, Annotation) VALUES (10050, 'NetworkDown');
INSERT INTO SocketError (ErrorCode, Annotation) VALUES (10052, 'NetworkReset');
INSERT INTO SocketError (ErrorCode, Annotation) VALUES (10051, 'NetworkUnreachable');
INSERT INTO SocketError (ErrorCode, Annotation) VALUES (10055, 'NoBufferSpaceAvailable');
INSERT INTO SocketError (ErrorCode, Annotation) VALUES (11004, 'NoData');
INSERT INTO SocketError (ErrorCode, Annotation) VALUES (11003, 'NoRecovery');
INSERT INTO SocketError (ErrorCode, Annotation) VALUES (10057, 'NotConnected');
INSERT INTO SocketError (ErrorCode, Annotation) VALUES (10093, 'NotInitialized');
INSERT INTO SocketError (ErrorCode, Annotation) VALUES (10038, 'NotSocket');
INSERT INTO SocketError (ErrorCode, Annotation) VALUES (995, 'OperationAborted');
INSERT INTO SocketError (ErrorCode, Annotation) VALUES (10045, 'OperationNotSupported');
INSERT INTO SocketError (ErrorCode, Annotation) VALUES (10067, 'ProcessLimit');
INSERT INTO SocketError (ErrorCode, Annotation) VALUES (10046, 'ProtocolFamilyNotSupported');
INSERT INTO SocketError (ErrorCode, Annotation) VALUES (10043, 'ProtocolNotSupported');
INSERT INTO SocketError (ErrorCode, Annotation) VALUES (10042, 'ProtocolOption');
INSERT INTO SocketError (ErrorCode, Annotation) VALUES (10041, 'ProtocolType');
INSERT INTO SocketError (ErrorCode, Annotation) VALUES (10058, 'Shutdown');
INSERT INTO SocketError (ErrorCode, Annotation) VALUES (-1, 'SocketError');
INSERT INTO SocketError (ErrorCode, Annotation) VALUES (10044, 'SocketNotSupported');
INSERT INTO SocketError (ErrorCode, Annotation) VALUES (0, 'Success');
INSERT INTO SocketError (ErrorCode, Annotation) VALUES (10091, 'SystemNotReady');
INSERT INTO SocketError (ErrorCode, Annotation) VALUES (10060, 'TimedOut');
INSERT INTO SocketError (ErrorCode, Annotation) VALUES (10024, 'TooManyOpenSockets');
INSERT INTO SocketError (ErrorCode, Annotation) VALUES (11002, 'TryAgain');
INSERT INTO SocketError (ErrorCode, Annotation) VALUES (10109, 'TypeNotFound');
INSERT INTO SocketError (ErrorCode, Annotation) VALUES (10092, 'VersionNotSupported');
INSERT INTO SocketError (ErrorCode, Annotation) VALUES (10035, 'WouldBlock');
end ;