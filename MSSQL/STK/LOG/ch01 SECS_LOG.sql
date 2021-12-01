IF NOT EXISTS (select * from sys.tables where name = 'SECS_LOG')
CREATE TABLE SECS_LOG (
    Date_time  datetime2  NOT NULL,
    LOG   VARCHAR (MAX) NOT NULL
);

TRUNCATE TABLE SECS_LOG;