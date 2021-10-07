create database Test;

SELECT UUID();
SELECT REPLACE(UUID(), '-', '');

create table DEPARTMENTS (
  deptno        varchar(50),
  name          varchar(50) not null,
  location      varchar(50),
  constraint pk_departments primary key (deptno)
);

create table EMPLOYEES (
  empno             varchar(50),
  name              varchar(50) not null,
  job               varchar(50),
  manager           int,
  hiredate          datetime,
  salary            int,
  commission        int,
  deptno           varchar(50),
  constraint pk_employees primary key (empno),
  constraint fk_employees_deptno foreign key (deptno)
      references DEPARTMENTS (deptno)
);

create trigger  INSERT_DEPARTMENTS_BIU
    BEFORE INSERT
    on DEPARTMENTS
    for each row
begin
    if NEW.deptno  is null then
         set NEW.deptno = REPLACE(UUID(), '-', '');
    end if;
end;

create trigger  UPDATE_DEPARTMENTS_BIU
    BEFORE UPDATE
    on DEPARTMENTS
    for each row
begin
    set NEW.deptno = REPLACE(UUID(), '-', '');
end;

insert into departments (name, location) values
   ('Finance','New York');
insert into departments (name, location) values
   ('Development','San Jose');
update departments set name ='ADAM' where  name ='Finance';

create trigger  INSERT_EMPLOYEES_BIU
    BEFORE INSERT
    on EMPLOYEES
    for each row
begin
    if NEW.empno   is null then
         set NEW.empno  = REPLACE(UUID(), '-', '');
    end if;
end;

create trigger  UPDATE_EMPLOYEES_BIU
    BEFORE UPDATE
    on EMPLOYEES
    for each row
begin
    set NEW.empno  = REPLACE(UUID(), '-', '');
end;

select deptno
  from departments
  where name = 'Development';

insert into EMPLOYEES
   (name, job, salary, deptno)
   values
   ('Sam Smith','Programmer',
    5000,
  (select deptno
  from departments
  where name = 'Development'));

insert into EMPLOYEES
   (name, job, salary, deptno)
   values
   ('Mara Martin','Analyst',
   6000,
   (select deptno
   from departments
   where name = 'Finance'));

insert into EMPLOYEES
   (name, job, salary, deptno)
   values
   ('Yun Yates','Analyst',
   5500,
   (select deptno
   from departments
   where name = 'Development'));

select table_name "Table",
       index_name "Index",
       column_name "Column",
       column_position "Position"
from  user_ind_columns
where table_name = 'EMPLOYEES' or
      table_name = 'DEPARTMENTS'
order by table_name, column_name, column_position;


select e.name employee,
           d.name department,
           e.job,
           d.location
from departments d, employees e
where d.deptno = e.deptno
order by e.name;


select e.name employee,
          (select name
           from departments d
           where d.deptno = e.deptno) department,
           e.job
from employees e
order by e.name;

alter table EMPLOYEES
add country_code varchar(2);

update employees
set country_code = 'US';

update employees
set commission = 2000
where  name = 'Sam Smith';

select name, country_code, salary, commission
from employees
order by name;

select
      count(*) employee_count,
      sum(salary) total_salary,
      sum(commission) total_commission,
      min(salary + nvl(commission,0)) min_compensation,
      max(salary + nvl(commission,0)) max_compensation
from employees;


select * from DEPARTMENTS into outfile '/tmp/test.csv' fields terminated by ','  escaped by '' optionally enclosed  by ''   lines terminated by '\n' ;



create table TEST123 (
  date_time          datetime,
  salary            int,
  commission        int
);
insert into TEST123  values
   ('2021-09-28 00:00:01','123','1567');


SELECT date_time,Foup_ID
  FROM test_123
  where date_time BETWEEN '2021-10-01 00:00:00' AND
                          '2021-10-30 23:59:59';

SHOW PROCESSLIST;
show variables like '%sche%';

CREATE PROCEDURE timing_fush_hosts()
BEGIN
set @sql =  concat('SELECT * INTO OUTFILE \'D:/',DATE_FORMAT(now(), '%Y_%m_%d %H%i%S'),'.csv\'
  FIELDS TERMINATED BY \',\' OPTIONALLY ENCLOSED BY \'\'
  LINES TERMINATED BY \'\\n\'
    from (
        select \'date_time\',\'salary\',\'commission\',\'GUID\' union
        select * from test_123
        where date_time BETWEEN \'2021-10-01 00:00:00\'AND
                            \'2021-10-30 23:59:59\'
        )b;');
prepare s1 from @sql; -- create statment from variable
execute s1; -- execute prepared statements
END;
select * from EVENTS;

SELECT * FROM information_schema.events;

create event e_flush_hosts
    on schedule
        every 1 minute
    on completion preserve
    enable
    do
    call timing_flush_hosts();

show variables like 'event_scheduler';


DROP EVENT event_flush_hosts;
