IF NOT EXISTS (select * from sys.tables where name = 'SECS_LOG')
CREATE TABLE SECS_LOG (
    Date_time  datetime2  NOT NULL,
    ErrorCode   int NOT NULL
);

IF NOT EXISTS (select * from sys.tables where name = 'SECS_ErrorCode')
CREATE TABLE SECS_ErrorCode (
    ErrorCode  int  NOT NULL ,
    Annotation   VARCHAR (50) NOT NULL,
    PRIMARY KEY (Annotation),
);

INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1031, N'ARRAYACCESS');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1014, N'BADFUNCTION');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1005, N'BADITEMID');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1013, N'BADSTREAM');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1021, N'BADTRANSID');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1046, N'BAUDINVALID');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1135, N'BLOCKOUTOFORDER');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1079, N'DELETEROOTITEM');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1047, N'DEVICEIDINVALID');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1134, N'DUPLICATEBLOCK');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1133, N'DUPLICATEROOTITEM');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1004, N'EMPTYLIST');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1042, N'EVENPRIMARYFUNCTION');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1065, N'HSMST3INVALID');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1066, N'HSMST5INVALID');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1067, N'HSMST6INVALID');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1068, N'HSMST7INVALID');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1069, N'HSMST8INVALID');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1030, N'IDS_wsErrMultiDimensionalArray');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1039, N'IDS_wsErrNotMultiple');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1002, N'ILLEGALFORMATCODE');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1003, N'ILLEGALNLB');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1137, N'ILLEGALRAW');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1016, N'INLIBRARY');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1029, N'INTERNAL');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1138, N'INVALIDINDEX');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1072, N'IPADDRESSTOOLONG');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1044, N'ITEMDELETED');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1008, N'ITEMIDFORMAT');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1007, N'ITEMIDNOTFOUND');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1010, N'ITEMIDTOOLARGE');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1006, N'ITEMIDTOOSMALL');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1045, N'ITEMINDEXFORMAT');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1011, N'ITEMINPROGRESS');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1009, N'ITEMNOTFOUND');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1099, N'LIBADDRESSNOTSUPPORTED');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1109, N'LIBALREADYCONNECTED');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1084, N'LIBBADPORTNAME');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1011, N'LIBCANNOTCONNECT');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1106, N'LIBCONNECTREFUSED');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1122, N'LIBCONNECTRESET');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1086, N'LIBCREATEPORT');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1107, N'LIBDESTREQUIRED');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1088, N'LIBEVENT');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1100, N'LIBFDS');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1082, N'LIBINTERNAL');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1096, N'LIBINVALIDTCPDLL');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1105, N'LIBIPADDRESSNOTALLOWED');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1104, N'LIBIPADDRESSNOTAVAIL');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1085, N'LIBMAXPORTS');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1087, N'LIBMUTEX');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1095, N'LIBNETWORKNOTREADY');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1083, N'LIBNOPORTNAME');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1108, N'LIBNOTBOUND');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1092, N'LIBOPENFAILED');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1081, N'LIBOUTOFMEMORY');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1090, N'LIBPORTALREADYOPEN');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1089, N'LIBPORTNOTCLOSED');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1103, N'LIBPORTNOTSUPPORTED');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1102, N'LIBPORTTYPENOTSUPPORTED');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1020, N'LIBRARYEMPTY');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1091, N'LIBTRANSNOTFOUND');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1101, N'LIBWINSOCKBUFFERS');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1098, N'LIBWINSOCKDOWN');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1121, N'LIBWINSOCKNOTFOUND');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1097, N'LIBWINSOCKNOTINIT');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1123, N'LIBWINSOCKSHUTDOWN');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1075, N'LINKTESTTIMERINVALID');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1012, N'MSGINPROGRESS');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1017, N'NOPRIMARY');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1018, N'NOSECONDARY');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1019, N'NOTINLIBRARY');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1077, N'NOWINDOWHANDLE');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1043, N'ODDSECONDARYFUNCTION');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (0, N'OK');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1033, N'OUTOFMEMORY');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1063, N'PORTALREADYOPEN');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1078, N'PORTCLOSEDWHILEINPROGRESS');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1040, N'PORTNOTOPEN');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1074, N'PORTNUMBERINVALID');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1053, N'PORTTYPEINVALID');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1048, N'RTYINVALID');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1062, N'SERIALPORTNAMETOOLONG');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1001, N'SETROOTFORMAT');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1049, N'T1INVALID');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1050, N'T2INVALID');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1051, N'T3INVALID');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1052, N'T4INVALID');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1064, N'TRANSDELETED');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1126, N'TRANSIDNOTFOUND');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1125, N'TRANSIDTOOSMALL');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1024, N'TRANSINDEXFORMAT');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1023, N'TRANSINDEXNOTFOUND');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1026, N'TRANSINDEXTOOLARGE');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1022, N'TRANSINDEXTOOSMALL');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1015, N'TRANSINPROGRESS');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1027, N'TRANSNAMEFORMAT');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1025, N'TRANSNOTFOUND');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1136, N'UNEXPECTEDFIRSTBLOCK');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1041, N'UNKNOWNMSGSENT');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1120, N'wsErrBadChar');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1127, N'wsErrCharacterDiscarded');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1132, N'wsErrChecksum');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1131, N'wsErrCommAbort');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1012, N'wsErrConnectionLost');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1118, N'wsErrDisconnectLocal');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1119, N'wsErrDisconnectRemote');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1038, N'wsErrEndsInData');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1037, N'wsErrEndsInLengthByte');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1117, N'wsErrHSMSReject');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1013, N'wsErrHSMST6');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1014, N'wsErrHSMST7');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1015, N'wsErrHSMST8');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1054, N'wsErrI4Range');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1036, N'wsErrIllegalFormatCodeIn');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1034, N'wsErrListTooShort');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1124, N'wsErrNotConnected');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1032, N'wsErrNumericConversion');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1139, N'wsErrNZSelectStatus');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1094, N'wsErrRTY');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1028, N'wsErrStringConversion');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1129, N'wsErrT1Timeout');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1128, N'wsErrT2Timeout');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1093, N'wsErrT3Timeout');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1130, N'wsErrT4Timeout');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1055, N'wsErrU4Range');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1056, N'wsErrU8Range');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1073, N'wsErrUnknownSecondary');
INSERT INTO test.dbo.SECS_ErrorCode (ErrorCode, Annotation) VALUES (1035, N'wsErrZeroNLB');

IF NOT EXISTS (select * from sys.tables where name = 'SECS_LOG_Buffer')
CREATE TABLE SECS_LOG_Buffer (
    Annotation   VARCHAR (50) NOT NULL
);

CREATE TRIGGER trg_SECS_LOG_INSERT
ON SECS_LOG_Buffer
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO SECS_LOG(
        Date_time,
        ErrorCode
    )
    SELECT
        GETDATE(),
           ErrorCode
    FROM SECS_ErrorCode
    WHERE EXISTS (select * from inserted ta where SECS_ErrorCode.Annotation = ta.Annotation);
END;
INSERT INTO SECS_LOG_Buffer(Annotation)VALUES ('OUTOFMEMORY');
