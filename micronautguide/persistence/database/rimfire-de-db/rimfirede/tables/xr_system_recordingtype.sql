--DROP TABLE rimfirede.XR_SYSTEM_RECORDINGTYPE CASCADE CONSTRAINTS;

CREATE TABLE rimfirede.XR_SYSTEM_RECORDINGTYPE
(
    SYSTEM_RECORDINGTYPE_ID uuid DEFAULT uuid_generate_v4 () constraint XR_SYSTEM_RECORDINGTYPE_pk  PRIMARY KEY,
    SYSTEM_ID  uuid NOT NULL,
    RECORDING_TYPE_ID        uuid NOT NULL,
    DISPLAY_ORDER_NUM        NUMERIC               DEFAULT 9999999999            NOT NULL,
    ROW_STATUS_IND           VARCHAR(2)     DEFAULT 'A'                   NOT NULL,
    TRANS_CREATE_BY_RFUSER   VARCHAR(512),
    TRANS_CREATE_DTM         TIMESTAMP(6)         DEFAULT CURRENT_TIMESTAMP          NOT NULL,
    TRANS_BY_RFUSER          VARCHAR(512),
    TRANS_DB_DTM             TIMESTAMP(6)         DEFAULT CURRENT_TIMESTAMP          NOT NULL,
    TRANS_DB_USERID          VARCHAR(30)    DEFAULT USER                  NOT NULL,
    TRANS_CREATE_USERID      VARCHAR(30)    DEFAULT USER                  NOT NULL,
    TRANS_BY_UID             NUMERIC,
    TRANS_CREATE_BY_UID      NUMERIC,
    CLASS_CD_V               VARCHAR(60), --GENERATED ALWAYS AS (CAST("RIMFIREDB"."GETCLASSCODE"("CLASS_CID") AS VARCHAR (60))),
    IDT_DISPLAY_ORDER_NUM    NUMERIC               DEFAULT 9999999999            NOT NULL
);


COMMENT ON TABLE rimfirede.XR_SYSTEM_RECORDINGTYPE IS 'Types of recording per System ID (i.e. TSN, TSO...)';

COMMENT ON COLUMN rimfirede.XR_SYSTEM_RECORDINGTYPE.SYSTEM_ID IS 'System generated primary key';

COMMENT ON COLUMN rimfirede.XR_SYSTEM_RECORDINGTYPE.RECORDING_TYPE_ID IS 'Foreign key pointer to the RECORDING_TYPES table';

COMMENT ON COLUMN rimfirede.XR_SYSTEM_RECORDINGTYPE.DISPLAY_ORDER_NUM IS 'DSS UI display order';

COMMENT ON COLUMN rimfirede.XR_SYSTEM_RECORDINGTYPE.ROW_STATUS_IND IS 'State of the database row (A)ctive or (I)nactive.';

COMMENT ON COLUMN rimfirede.XR_SYSTEM_RECORDINGTYPE.TRANS_CREATE_BY_RFUSER IS 'Rimfire user performing insert row transaction';

COMMENT ON COLUMN rimfirede.XR_SYSTEM_RECORDINGTYPE.TRANS_CREATE_DTM IS 'Row insert date and timestamp';

COMMENT ON COLUMN rimfirede.XR_SYSTEM_RECORDINGTYPE.TRANS_BY_RFUSER IS 'Rimfire user performing transaction';

COMMENT ON COLUMN rimfirede.XR_SYSTEM_RECORDINGTYPE.TRANS_DB_DTM IS 'Database transaction timestamp';

COMMENT ON COLUMN rimfirede.XR_SYSTEM_RECORDINGTYPE.TRANS_DB_USERID IS 'Oracle user performing transaction';

COMMENT ON COLUMN rimfirede.XR_SYSTEM_RECORDINGTYPE.TRANS_CREATE_USERID IS 'Oracle user performing insert row transaction';

COMMENT ON COLUMN rimfirede.XR_SYSTEM_RECORDINGTYPE.IDT_DISPLAY_ORDER_NUM IS 'IDT UI display order';
