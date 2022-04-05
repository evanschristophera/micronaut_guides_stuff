--DROP TABLE rimfirede.SYSTEMS CASCADE CONSTRAINTS;

CREATE TABLE rimfirede.SYSTEMS
(
  SYSTEM_ID                   uuid DEFAULT uuid_generate_v4 ()  constraint SYSTEMS_pk PRIMARY KEY,
  SYSTEM_NAME                 VARCHAR(128)                              NOT NULL,
  DISPLAY_TXT                 VARCHAR(256)                              NOT NULL,
  STATUS_IND                  VARCHAR(1)  DEFAULT 'A'                   NOT NULL,
  FILTER_TXT                  VARCHAR(512),
  SEQNBR_PREFIX               VARCHAR(4),
  CLASS_CD                    VARCHAR(60)                               NOT NULL,
  DEFAULT_IND                 VARCHAR(1)  DEFAULT 'N'                   NOT NULL,
  DISPLAY_ORDER_NUM           NUMERIC            DEFAULT 9999999999            NOT NULL,
  PROJECT_ID                  NUMERIC                                          NOT NULL,
  PROJECT_SYSTEM_ROLE_SUFFIX  VARCHAR(40),
  TRANS_CREATE_DTM            TIMESTAMP(6),
  TRANS_CREATE_USERID         VARCHAR(30),
  TRANS_DB_DTM                TIMESTAMP(6),
  TRANS_DB_USERID             VARCHAR(30),
  PROJECT_NAME_V              VARCHAR(30) --GENERATED ALWAYS AS (CAST("rimfirede"."GETPROJECT"("PROJECT_ID") AS VARCHAR (30)))
)
/*
TABLESPACE DSRS_DT
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          80K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
          )
LOGGING 
NOCOMPRESS 
NOCACHE
MONITORING
*/
;

COMMENT ON TABLE rimfirede.SYSTEMS IS 'Composition of parts which work together for an engineered purpose.';

COMMENT ON COLUMN rimfirede.SYSTEMS.SYSTEM_ID IS 'Unique Sequence number to identify a new system entry';

COMMENT ON COLUMN rimfirede.SYSTEMS.SYSTEM_NAME IS 'Name of the SYSTEM';

COMMENT ON COLUMN rimfirede.SYSTEMS.DISPLAY_TXT IS 'Text to be displayed to the application user';

--COMMENT ON COLUMN rimfirede.SYSTEMS.CLASS_CID IS 'SYSTEM CLASS pointer value used by CLASS_CID in other tables to reference the correct CLASS_CD in the SYSTEMS table';

COMMENT ON COLUMN rimfirede.SYSTEMS.STATUS_IND IS '(A)ctive, (I)nactive, (D)eleted) System registration state';

COMMENT ON COLUMN rimfirede.SYSTEMS.FILTER_TXT IS 'SQL <where clause> text to further constrain SYSTEM access';

COMMENT ON COLUMN rimfirede.SYSTEMS.SEQNBR_PREFIX IS 'System prefix identifier to a depot shop sequence number';

COMMENT ON COLUMN rimfirede.SYSTEMS.CLASS_CD IS 'Code value decode';

COMMENT ON COLUMN rimfirede.SYSTEMS.DEFAULT_IND IS 'Indicates this is the default code for this code type';

COMMENT ON COLUMN rimfirede.SYSTEMS.DISPLAY_ORDER_NUM IS 'Screen display order';

COMMENT ON COLUMN rimfirede.SYSTEMS.PROJECT_ID IS 'Primary key to PROJECTS table for this row.';

COMMENT ON COLUMN rimfirede.SYSTEMS.PROJECT_SYSTEM_ROLE_SUFFIX IS 'Abbreviation for concatenation of PROJECT name and SYSTEM_NAME/CLASS_CD';

COMMENT ON COLUMN rimfirede.SYSTEMS.TRANS_CREATE_DTM IS 'Oracle system date and time that the row was created.';

COMMENT ON COLUMN rimfirede.SYSTEMS.TRANS_CREATE_USERID IS 'Oracle user that created the row.';

COMMENT ON COLUMN rimfirede.SYSTEMS.TRANS_DB_DTM IS 'Oracle system date and time that the row was last changed.';

COMMENT ON COLUMN rimfirede.SYSTEMS.TRANS_DB_USERID IS 'Oracle user that most recently changed the row.';