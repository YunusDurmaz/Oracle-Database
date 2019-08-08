  SELECT DSJ.STATE,
         DSJ.LAST_START_DATE,
         DSJ.LAST_RUN_DURATION,
         ENABLED,
         DSJ.*
    FROM DBA_SCHEDULER_JOBS DSJ
   WHERE 1 = 1 
   --AND owner = 'XXX'
   AND STATE= 'RUNNING'
   --AND STATE= 'DISABLE'
ORDER BY DSJ.LAST_START_DATE DESC;
