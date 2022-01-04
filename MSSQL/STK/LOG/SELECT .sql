SELECT
       SECS_LOG.Date_time,
       HT.Annotation as HostAgent_Type,
       SECS_LOG.S,
       SECS_LOG.F,
       SD.Annotation AS SECS_FN_Annotation,
       SECS_LOG.Content,
       SEC.Annotation AS Error_Annotation
FROM SECS_LOG
inner join HostAgent_Type HT on SECS_LOG.HostAgent_Type = HT.Type
inner join SECS_Description SD on SECS_LOG.F = SD.F and SECS_LOG.S = SD.S
inner join SECS_ErrorCode SEC on SECS_LOG.ErrorCode = SEC.ErrorCode
where Date_time between '2021-12-16 10:14:10.4929848' and '2021-12-16 10:14:10.4929848';