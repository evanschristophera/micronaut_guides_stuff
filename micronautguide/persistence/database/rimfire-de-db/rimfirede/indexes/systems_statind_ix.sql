CREATE INDEX SYSTEMS_STATIND_IX ON rimfirede.SYSTEMS
(STATUS_IND)
/*
LOGGING
TABLESPACE DSRS_IX
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
          )
*/
;
