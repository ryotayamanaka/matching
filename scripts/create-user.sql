CREATE USER matching
IDENTIFIED BY WELcome123##
DEFAULT TABLESPACE users
TEMPORARY TABLESPACE temp
QUOTA UNLIMITED ON users;

GRANT
  alter session 
, create procedure 
, create sequence 
, create session 
, create table 
, create trigger 
, create type 
, create view 
TO matching;
