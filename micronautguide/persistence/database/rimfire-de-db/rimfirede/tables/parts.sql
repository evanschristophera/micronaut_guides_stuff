--DROP TABLE rimfirede.PARTS CASCADE CONSTRAINTS;

CREATE TABLE rimfirede.PARTS
(
  PART_ID                 uuid DEFAULT uuid_generate_v4 () constraint PARTS_pk  PRIMARY KEY,
  HIERARCHY_ID            uuid                NOT NULL,
  PART_NBR                VARCHAR(20)     NOT NULL,
  ROW_STATUS_IND          VARCHAR(2)      DEFAULT 'A'                   NOT NULL,
  TRANS_CREATE_BY_UID     NUMERIC                DEFAULT 0                     NOT NULL,
  TRANS_CREATE_DTM        TIMESTAMP(6)          DEFAULT CURRENT_TIMESTAMP          NOT NULL,
  TRANS_BY_UID            NUMERIC                DEFAULT 0                     NOT NULL,
  TRANS_DB_DTM            TIMESTAMP(6)          DEFAULT CURRENT_TIMESTAMP          NOT NULL,
  TRANS_DB_USERID         VARCHAR(30)     DEFAULT USER                  NOT NULL,
  TRANS_CREATE_USERID     VARCHAR(30)     DEFAULT USER,
  TRANS_BY_RFUSER         VARCHAR(512),
  TRANS_CREATE_BY_RFUSER  VARCHAR(512)
)
/*
TABLESPACE RIMFIRE_DT
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

COMMENT ON TABLE rimfirede.PARTS IS 'Per hierarchy item, the related part numbers';

COMMENT ON COLUMN rimfirede.PARTS.PART_ID IS 'System generated Primary Key for the PARTS table';

COMMENT ON COLUMN rimfirede.PARTS.HIERARCHY_ID IS 'Foreign key pointer to the primary key of the parent HIERARCHIES table row.';

COMMENT ON COLUMN rimfirede.PARTS.PART_NBR IS 'A part number available for a specific system hierarchy item';

COMMENT ON COLUMN rimfirede.PARTS.ROW_STATUS_IND IS 'State of the database row (A)ctive or (I)nactive.';

COMMENT ON COLUMN rimfirede.PARTS.TRANS_CREATE_BY_UID IS 'Row creation activity identified by PK value of DSRSDB.USERS.USERID';

COMMENT ON COLUMN rimfirede.PARTS.TRANS_CREATE_DTM IS 'Row insert date and timestamp of remote desktop local time';

COMMENT ON COLUMN rimfirede.PARTS.TRANS_BY_UID IS 'Row activity identified by PK value of DSRSDB.USERS.USERID';

COMMENT ON COLUMN rimfirede.PARTS.TRANS_DB_DTM IS 'Database transaction timestamp';

COMMENT ON COLUMN rimfirede.PARTS.TRANS_DB_USERID IS 'Oracle userid performing transaction';

COMMENT ON COLUMN rimfirede.PARTS.TRANS_CREATE_USERID IS 'Oracle userid creating transaction row';

COMMENT ON COLUMN rimfirede.PARTS.TRANS_BY_RFUSER IS 'The RIMFIRE user that last changed data in the table row entry';

COMMENT ON COLUMN rimfirede.PARTS.TRANS_CREATE_BY_RFUSER IS 'The RIMFIRE user that created the table row entry';