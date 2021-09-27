-- 創建 SECS_LOG TABLE --
IF NOT EXISTS (select * from sys.tables where name = 'SECS_LOG')
CREATE TABLE SECS_LOG (
    Date_time  datetime2  NOT NULL,
    ErrorCode   int NOT NULL
);
-- 創建 SECS_ErrorCode TABLE --
IF NOT EXISTS (select * from sys.tables where name = 'SECS_ErrorCode')
CREATE TABLE SECS_ErrorCode (
    ErrorCode  int  NOT NULL ,
    Annotation   VARCHAR (50) NOT NULL,
    PRIMARY KEY (Annotation),
);
-- 加入 SECS_ErrorCode 比對資料 --
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1031, 'ARRAYACCESS');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1014, 'BADFUNCTION');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1005, 'BADITEMID');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1013, 'BADSTREAM');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1021, 'BADTRANSID');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1046, 'BAUDINVALID');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1135, 'BLOCKOUTOFORDER');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1079, 'DELETEROOTITEM');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1047, 'DEVICEIDINVALID');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1134, 'DUPLICATEBLOCK');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1133, 'DUPLICATEROOTITEM');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1004, 'EMPTYLIST');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1042, 'EVENPRIMARYFUNCTION');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1065, 'HSMST3INVALID');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1066, 'HSMST5INVALID');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1067, 'HSMST6INVALID');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1068, 'HSMST7INVALID');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1069, 'HSMST8INVALID');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1030, 'IDS_wsErrMultiDimensionalArray');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1039, 'IDS_wsErrNotMultiple');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1002, 'ILLEGALFORMATCODE');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1003, 'ILLEGALNLB');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1137, 'ILLEGALRAW');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1016, 'INLIBRARY');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1029, 'INTERNAL');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1138, 'INVALIDINDEX');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1072, 'IPADDRESSTOOLONG');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1044, 'ITEMDELETED');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1008, 'ITEMIDFORMAT');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1007, 'ITEMIDNOTFOUND');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1010, 'ITEMIDTOOLARGE');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1006, 'ITEMIDTOOSMALL');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1045, 'ITEMINDEXFORMAT');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1011, 'ITEMINPROGRESS');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1009, 'ITEMNOTFOUND');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1099, 'LIBADDRESSNOTSUPPORTED');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1109, 'LIBALREADYCONNECTED');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1084, 'LIBBADPORTNAME');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1011, 'LIBCANNOTCONNECT');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1106, 'LIBCONNECTREFUSED');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1122, 'LIBCONNECTRESET');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1086, 'LIBCREATEPORT');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1107, 'LIBDESTREQUIRED');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1088, 'LIBEVENT');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1100, 'LIBFDS');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1082, 'LIBINTERNAL');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1096, 'LIBINVALIDTCPDLL');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1105, 'LIBIPADDRESSNOTALLOWED');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1104, 'LIBIPADDRESSNOTAVAIL');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1085, 'LIBMAXPORTS');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1087, 'LIBMUTEX');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1095, 'LIBNETWORKNOTREADY');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1083, 'LIBNOPORTNAME');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1108, 'LIBNOTBOUND');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1092, 'LIBOPENFAILED');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1081, 'LIBOUTOFMEMORY');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1090, 'LIBPORTALREADYOPEN');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1089, 'LIBPORTNOTCLOSED');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1103, 'LIBPORTNOTSUPPORTED');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1102, 'LIBPORTTYPENOTSUPPORTED');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1020, 'LIBRARYEMPTY');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1091, 'LIBTRANSNOTFOUND');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1101, 'LIBWINSOCKBUFFERS');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1098, 'LIBWINSOCKDOWN');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1121, 'LIBWINSOCKNOTFOUND');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1097, 'LIBWINSOCKNOTINIT');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1123, 'LIBWINSOCKSHUTDOWN');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1075, 'LINKTESTTIMERINVALID');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1012, 'MSGINPROGRESS');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1017, 'NOPRIMARY');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1018, 'NOSECONDARY');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1019, 'NOTINLIBRARY');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1077, 'NOWINDOWHANDLE');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1043, 'ODDSECONDARYFUNCTION');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (0, 'OK');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1033, 'OUTOFMEMORY');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1063, 'PORTALREADYOPEN');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1078, 'PORTCLOSEDWHILEINPROGRESS');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1040, 'PORTNOTOPEN');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1074, 'PORTNUMBERINVALID');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1053, 'PORTTYPEINVALID');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1048, 'RTYINVALID');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1062, 'SERIALPORTNAMETOOLONG');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1001, 'SETROOTFORMAT');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1049, 'T1INVALID');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1050, 'T2INVALID');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1051, 'T3INVALID');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1052, 'T4INVALID');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1064, 'TRANSDELETED');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1126, 'TRANSIDNOTFOUND');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1125, 'TRANSIDTOOSMALL');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1024, 'TRANSINDEXFORMAT');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1023, 'TRANSINDEXNOTFOUND');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1026, 'TRANSINDEXTOOLARGE');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1022, 'TRANSINDEXTOOSMALL');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1015, 'TRANSINPROGRESS');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1027, 'TRANSNAMEFORMAT');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1025, 'TRANSNOTFOUND');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1136, 'UNEXPECTEDFIRSTBLOCK');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1041, 'UNKNOWNMSGSENT');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1120, 'wsErrBadChar');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1127, 'wsErrCharacterDiscarded');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1132, 'wsErrChecksum');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1131, 'wsErrCommAbort');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1012, 'wsErrConnectionLost');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1118, 'wsErrDisconnectLocal');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1119, 'wsErrDisconnectRemote');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1038, 'wsErrEndsInData');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1037, 'wsErrEndsInLengthByte');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1117, 'wsErrHSMSReject');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1013, 'wsErrHSMST6');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1014, 'wsErrHSMST7');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1015, 'wsErrHSMST8');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1054, 'wsErrI4Range');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1036, 'wsErrIllegalFormatCodeIn');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1034, 'wsErrListTooShort');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1124, 'wsErrNotConnected');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1032, 'wsErrNumericConversion');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1139, 'wsErrNZSelectStatus');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1094, 'wsErrRTY');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1028, 'wsErrStringConversion');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1129, 'wsErrT1Timeout');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1128, 'wsErrT2Timeout');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1093, 'wsErrT3Timeout');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1130, 'wsErrT4Timeout');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1055, 'wsErrU4Range');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1056, 'wsErrU8Range');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1073, 'wsErrUnknownSecondary');
INSERT INTO SECS_ErrorCode (ErrorCode, Annotation) VALUES (1035, 'wsErrZeroNLB');


-- 創建 SECS_LOG_Buffer TABLE 作爲接收區--
IF NOT EXISTS (select * from sys.tables where name = 'SECS_LOG_Buffer')
CREATE TABLE SECS_LOG_Buffer (
    Annotation   VARCHAR (50) NOT NULL
);
-- 創建 SECS_LOG_Buffer 觸發器 trg_SECS_LOG_INSERT --
CREATE TRIGGER trg_SECS_LOG_INSERT
ON SECS_LOG_Buffer
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;
    -- 填寫資料到SECS_LOG --
    INSERT INTO SECS_LOG(
        Date_time,
        ErrorCode
    )
    SELECT
        GETDATE(),
           ErrorCode
    FROM SECS_ErrorCode
    WHERE EXISTS (select * from inserted ta where SECS_ErrorCode.Annotation = ta.Annotation);
    -- 刪除 SECS_LOG_Buffer 資料--
    TRUNCATE TABLE SECS_LOG_Buffer;
END;

INSERT INTO SECS_LOG_Buffer(Annotation)VALUES ('HSMST3INVALID');
