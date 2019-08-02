/* Formatted on 8/1/2019 9:01:38 AM (QP5 v5.269.14213.34769) */
  SELECT DSJ.STATE,
         DSJ.LAST_START_DATE,
         DSJ.LAST_RUN_DURATION,
         ENABLED,
         DSJ.*
    FROM DBA_SCHEDULER_JOBS DSJ
   WHERE 1 = 1 AND owner = 'XXX'
ORDER BY DSJ.LAST_START_DATE DESC;
