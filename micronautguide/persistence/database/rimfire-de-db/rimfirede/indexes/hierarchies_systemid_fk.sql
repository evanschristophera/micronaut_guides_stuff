CREATE INDEX HIER_SYSTEMID$FK ON rimfirede.HIERARCHIES
(SYSTEM_ID)
/*
LOGGING
TABLESPACE RIMFIRE_IX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
          );
*/
;