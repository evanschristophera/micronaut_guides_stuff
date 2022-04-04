CREATE INDEX SYSTEMID_HIERNAME_IX ON rimfirede.HIERARCHIES
(SYSTEM_ID, HIERARCHY_NAME)
/*
LOGGING
TABLESPACE rimfirede_IX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          96K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
          )
*/
;