CREATE UNIQUE INDEX HIERID_ASSESSIND_UIX ON rimfirede.HIERARCHIES
(HIERARCHY_ID, ASSESSABLE_IND)
/*LOGGING
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