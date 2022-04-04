CREATE INDEX ASSESDT_IX ON rimfirede.assessments
(ASSESSMENT_DT)
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
          )
           */
           ;