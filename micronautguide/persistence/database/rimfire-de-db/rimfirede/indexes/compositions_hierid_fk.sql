CREATE INDEX COMPOSITIONS_HIERID$FK ON rimfirede.COMPOSITIONS
(HIERARCHY_ID)
/*
LOGGING
TABLESPACE RIMFIRE_IX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          160K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
          )
           */
;