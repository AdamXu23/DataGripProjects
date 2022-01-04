SELECT Date_time,
      Annotation ,
      LOG
from Device_LOG
inner join SocketType on Device_LOG.Type = SocketType.TypeCode
where(Date_time BETWEEN @Time1 AND @Time2);