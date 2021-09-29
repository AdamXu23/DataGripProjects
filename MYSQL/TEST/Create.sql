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