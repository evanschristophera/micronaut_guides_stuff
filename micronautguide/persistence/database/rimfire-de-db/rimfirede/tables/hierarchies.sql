--DROP TABLE rimfirede.HIERARCHIES CASCADE CONSTRAINTS;

CREATE TABLE rimfirede.HIERARCHIES
(
  HIERARCHY_ID                  uuid DEFAULT uuid_generate_v4 () constraint HIERARCHIES_pk  PRIMARY KEY,
  HIERARCHY_NAME                VARCHAR(120)   NOT NULL,
  SYSTEM_ID                     uuid               NOT NULL,
  PARENT_HIERARCHY_ID           uuid,
  ASSESSABLE_IND                VARCHAR(1)     DEFAULT 'N'                   NOT NULL,
  INSPECTION_REQUIRED_IND       VARCHAR(1)     DEFAULT 'N'                   NOT NULL,
  PHOTOS_REQUIRED_IND VARCHAR(1)          DEFAULT 'N'                   NOT NULL,
  ROW_STATUS_IND                VARCHAR(2)     DEFAULT 'A'                   NOT NULL,
  TRANS_CREATE_BY_UID           NUMERIC               ,--NOT NULL,
  TRANS_CREATE_DTM              TIMESTAMP(6)         DEFAULT CURRENT_TIMESTAMP          NOT NULL,
  TRANS_BY_UID                  NUMERIC               ,--NOT NULL,
  TRANS_DB_DTM                  TIMESTAMP(6)         DEFAULT CURRENT_TIMESTAMP          NOT NULL,
  TRANS_DB_USERID               VARCHAR(30)    DEFAULT USER                  NOT NULL,
  PHYSICAL_ITEM_IND             VARCHAR(1)     DEFAULT 'Y'                   NOT NULL,
  INSPECTION_RECORDING_IND      VARCHAR(1)     DEFAULT 'Y',
  TRANS_CREATE_USERID           VARCHAR(30)    DEFAULT USER,
  TRANS_BY_RFUSER               VARCHAR(512),
  TRANS_CREATE_BY_RFUSER        VARCHAR(512),
  LONG_HIERARCHY_NAME           VARCHAR(120)
  --,
  --CLASS_CD_V               VARCHAR(60) GENERATED ALWAYS AS (CAST("rimfirede"."GETCLASSCODE"("SYSTEM_ID") AS VARCHAR (60)))
)
/*
TABLESPACE rimfirede_DT
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

COMMENT ON TABLE rimfirede.HIERARCHIES IS 'The bill of materials or tree of related component parts that compose a major asset system';

COMMENT ON COLUMN rimfirede.HIERARCHIES.HIERARCHY_ID IS 'System generated primary key';

COMMENT ON COLUMN rimfirede.HIERARCHIES.HIERARCHY_NAME IS 'Physical part name or label naming the logical set of parts';

COMMENT ON COLUMN rimfirede.HIERARCHIES.SYSTEM_ID IS 'Foreign key pointer to SYSTEMS.SYSTEM_ID to retrieve SYSTEM_CD text value';

COMMENT ON COLUMN rimfirede.HIERARCHIES.PARENT_HIERARCHY_ID IS 'Pointer to the parent hierarchy item';

COMMENT ON COLUMN rimfirede.HIERARCHIES.ASSESSABLE_IND IS 'Item is identified as an item which can be assessed';

COMMENT ON COLUMN rimfirede.HIERARCHIES.INSPECTION_REQUIRED_IND IS 'Item is identified as required for inspection';

COMMENT ON COLUMN rimfirede.HIERARCHIES.ROW_STATUS_IND IS 'State of the database row (A)ctive or (I)nactive.';

COMMENT ON COLUMN rimfirede.HIERARCHIES.TRANS_CREATE_BY_UID IS 'Row creation activity identified by PK value of USERAUTH.USERS.USERID';

COMMENT ON COLUMN rimfirede.HIERARCHIES.TRANS_CREATE_DTM IS 'Row insert date and timestamp of remote desktop local time';

COMMENT ON COLUMN rimfirede.HIERARCHIES.TRANS_BY_UID IS 'Row activity identified by PK value of USERAUTH.USERS.USERID';

COMMENT ON COLUMN rimfirede.HIERARCHIES.TRANS_DB_DTM IS 'Database transaction timestamp';

COMMENT ON COLUMN rimfirede.HIERARCHIES.TRANS_DB_USERID IS 'Oracle userid performing transaction';

COMMENT ON COLUMN rimfirede.HIERARCHIES.PHYSICAL_ITEM_IND IS 'Hierarchy item is a physical part ((Y)es, (N)o';

COMMENT ON COLUMN rimfirede.HIERARCHIES.INSPECTION_RECORDING_IND IS 'Indicates Hierarchy item can have inspection recordings (Y/N)';

COMMENT ON COLUMN rimfirede.HIERARCHIES.TRANS_CREATE_USERID IS 'Oracle userid creating transaction row';

COMMENT ON COLUMN rimfirede.HIERARCHIES.TRANS_BY_RFUSER IS 'The rimfirede user that last changed data in the table row entry';

COMMENT ON COLUMN rimfirede.HIERARCHIES.TRANS_CREATE_BY_RFUSER IS 'The rimfirede user that created the table row entry';

COMMENT ON COLUMN rimfirede.HIERARCHIES.LONG_HIERARCHY_NAME IS 'The extended (long) name of the hierarchy item.';