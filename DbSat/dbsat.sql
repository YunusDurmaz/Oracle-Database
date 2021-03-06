/*

DBSAT EXECUTE

*/

CREATE USER DBSAT_USER IDENTIFIED BY OraclE##2019;
GRANT CREATE SESSION to DBSAT_USER;
GRANT SELECT_CATALOG_ROLE TO DBSAT_USER;
GRANT SELECT ON SYS.REGISTRY$HISTORY TO DBSAT_USER;
GRANT DV_SECANALYST TO DBSAT_USER; (If Database Vault is enabled)
GRANT SELECT ON SYS.DBA_USERS_WITH_DEFPWD TO DBSAT_USER; (if 11G or later)
GRANT AUDIT_VIEWER TO DBSAT_USER; (if 12c or later)
GRANT SELECT ON AUDSYS.AUD$UNIFIED TO DBSAT_USER; (if 12c or later)
GRANT CAPTURE_ADMIN TO DBSAT_USER; (if 12c or later)


mkdir dbsat_d/
unzip dbsat.zip


./dbsat collect DBSAT_USER@test fehhrouut --it creates json file

--In order to create html and xls file you need execute command below
./dbsat report fehhrouut


--if dbsat returns an error
ERROR at line 49:
ORA-06550: line 49, column 42:
PLS-00201: identifier 'SYS.DBMS_SQL' must be declared


grant execute on DBMS_SQL to DBSAT_USER;
