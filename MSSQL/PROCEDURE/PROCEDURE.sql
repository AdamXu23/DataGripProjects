insert into Daytime (dt)
values (getdate());

create procedure INSERT_Daytime
as
begin
insert into Daytime (dt)
values (getdate());
end ;

exec INSERT_Daytime;