connect / as sysdba
create spfile from pfile;
startup nomount
CREATE DATABASE ORCL
EXTENT MANAGEMENT LOCAL
DEFAULT TEMPORARY TABLESPACE temp
UNDO TABLESPACE undotbs1
DEFAULT TABLESPACE users
ENABLE PLUGGABLE DATABASE
  SEED
  FILE_NAME_CONVERT = ('/u01/app/oracle/oradata/newcdb/', 
                       '/u01/app/oracle/oradata/pdbseed/')
  SYSTEM DATAFILES SIZE 125M AUTOEXTEND ON NEXT 10M MAXSIZE UNLIMITED
  SYSAUX DATAFILES SIZE 100M AUTOEXTEND ON NEXT 10M MAXSIZE UNLIMITED
CHARACTER SET AL32UTF8
NATIONAL CHARACTER SET UTF8;
CREATE TABLESPACE apps_tbs LOGGING 
     DATAFILE '/u01/app/oracle/oradata/ORCL/apps01.dbf' 
     SIZE 500M REUSE AUTOEXTEND ON NEXT  1280K MAXSIZE UNLIMITED 
     EXTENT MANAGEMENT LOCAL;
CREATE TABLESPACE indx_tbs LOGGING 
     DATAFILE '/u01/app/oracle/oradata/ORCL/indx01.dbf' 
     SIZE 100M REUSE AUTOEXTEND ON NEXT  1280K MAXSIZE UNLIMITED 
     EXTENT MANAGEMENT LOCAL;
exit
