CREATE UNIQUE INDEX ASSESSMENTS_NAME_UIX ON rimfirede.ASSESSMENTS
(ASSESSMENT_NAME)
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