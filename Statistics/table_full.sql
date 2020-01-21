

--SINGLE TABLE
BEGIN
   DBMS_SCHEDULER.SET_JOB_ARGUMENT_VALUE (JOB_NAME => 'JOB_GATHER_TABLE_STATS', ARGUMENT_POSITION => 1, ARGUMENT_VALUE => 'XXXX');
   DBMS_SCHEDULER.SET_JOB_ARGUMENT_VALUE (JOB_NAME => 'JOB_GATHER_TABLE_STATS', ARGUMENT_POSITION => 2, ARGUMENT_VALUE => 'TAB_1');
   DBMS_SCHEDULER.SET_JOB_ARGUMENT_VALUE (JOB_NAME => 'JOB_GATHER_TABLE_STATS', ARGUMENT_POSITION => 3, ARGUMENT_VALUE => 16);
   DBMS_SCHEDULER.SET_JOB_ARGUMENT_VALUE (JOB_NAME => 'JOB_GATHER_TABLE_STATS', ARGUMENT_POSITION => 4, ARGUMENT_VALUE => 'ALL');
   DBMS_SCHEDULER.SET_JOB_ARGUMENT_VALUE (JOB_NAME => 'JOB_GATHER_TABLE_STATS', ARGUMENT_POSITION => 5, ARGUMENT_VALUE => 'FOR ALL COLUMNS SIZE SKEWONLY');

   DBMS_SCHEDULER.RUN_JOB (JOB_NAME => 'JOB_GATHER_TABLE_STATS', USE_CURRENT_SESSION => TRUE);   

END;
/