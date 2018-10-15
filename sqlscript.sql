REM   Script: Creating table-Session 01
REM   This is basic code to create a simple table using sql database..-Anand prabhakar

create table DEPARTMENTS (   
  deptno        number,   
  name          varchar2(50) not null,   
  location      varchar2(50),   
  constraint pk_departments primary key (deptno)   
);

create table EMPLOYEES (   
  empno             number,   
  name              varchar2(50) not null,   
  job               varchar2(50),   
  manager           number,   
  hiredate          date,   
  salary            number(7,2),   
  commission        number(7,2),   
  deptno           number,   
  constraint pk_employees primary key (empno),   
  constraint fk_employees_deptno foreign key (deptno)  
      references DEPARTMENTS (deptno)   
);

