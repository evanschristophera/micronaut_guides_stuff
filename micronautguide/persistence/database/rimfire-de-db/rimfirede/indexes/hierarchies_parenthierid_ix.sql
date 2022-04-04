CREATE INDEX HIER_PARENTHIERID$FK ON rimfirede.HIERARCHIES
(PARENT_HIERARCHY_ID)
/*
LOGGING
TABLESPACE rimfirede_IX
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