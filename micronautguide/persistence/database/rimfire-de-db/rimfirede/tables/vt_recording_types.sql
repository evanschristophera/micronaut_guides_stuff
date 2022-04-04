--DROP TABLE rimfirede.VT_RECORDING_TYPES CASCADE CONSTRAINTS;

CREATE TABLE rimfirede.VT_RECORDING_TYPES
(
    RECORDING_TYPE_ID       uuid DEFAULT uuid_generate_v4 () constraint VT_RECORDING_TYPES_pk PRIMARY KEY,
    RECORDING_TYPE_CODE     VARCHAR(60)     NOT NULL,
    RECORDING_TYPE_DESC     VARCHAR(60)     NOT NULL,
    UNIT_OF_MEASURE_IND     VARCHAR(1),
    UOM_SHORT_TXT           VARCHAR(5),
    UOM_LONG_TXT            VARCHAR(20),
    RECORDING_FORMAT_TXT    VARCHAR(20),
    SUPERSET_IND            VARCHAR(1)      DEFAULT 'A'                   NOT NULL,
    ROW_STATUS_IND          VARCHAR(2)      DEFAULT 'A'                   NOT NULL,
    TRANS_CREATE_BY_RFUSER  VARCHAR(512),
    TRANS_CREATE_DTM        TIMESTAMP(6)          DEFAULT CURRENT_TIMESTAMP          NOT NULL,
    TRANS_BY_RFUSER         VARCHAR(512),
    TRANS_DB_DTM            TIMESTAMP(6)          DEFAULT CURRENT_TIMESTAMP          NOT NULL,
    TRANS_DB_USERID         VARCHAR(30)     DEFAULT USER                  NOT NULL,
    TRANS_CREATE_USERID     VARCHAR(30)     DEFAULT USER                  NOT NULL,
    TRANS_BY_UID            NUMERIC,
    TRANS_CREATE_BY_UID     NUMERIC,
    DSS_SW                  VARCHAR(1),
    IDT_SW                  VARCHAR(1)
)
;

COMMENT ON TABLE rimfirede.VT_RECORDING_TYPES IS 'Types of recording (i.e. TSN, TSO...)';

COMMENT ON COLUMN rimfirede.VT_RECORDING_TYPES.RECORDING_TYPE_ID IS 'System generated primary key';

COMMENT ON COLUMN rimfirede.VT_RECORDING_TYPES.RECORDING_TYPE_CODE IS 'The code of the recording type';

COMMENT ON COLUMN rimfirede.VT_RECORDING_TYPES.RECORDING_TYPE_DESC IS 'The name or title of the recording type';

COMMENT ON COLUMN rimfirede.VT_RECORDING_TYPES.UNIT_OF_MEASURE_IND IS 'RECORDING_TYPE Unit of Measurement: H=Hours, P=Percent,C=Count,D=Degrees,A=Alphnumeric string';

COMMENT ON COLUMN rimfirede.VT_RECORDING_TYPES.UOM_SHORT_TXT IS 'Table trigger short textual decode of UNIT_OF_MEASURE_IND';

COMMENT ON COLUMN rimfirede.VT_RECORDING_TYPES.UOM_LONG_TXT IS 'Table trigger long textual decode of UNIT_OF_MEASURE_IND';

COMMENT ON COLUMN rimfirede.VT_RECORDING_TYPES.RECORDING_FORMAT_TXT IS 'The display format for the recording type';

COMMENT ON COLUMN rimfirede.VT_RECORDING_TYPES.SUPERSET_IND IS 'The superset type of a recording: A=Any Inspected Item Recording, B=Inducted Item Recording';

COMMENT ON COLUMN rimfirede.VT_RECORDING_TYPES.ROW_STATUS_IND IS 'State of the database row (A)ctive or (I)nactive.';

COMMENT ON COLUMN rimfirede.VT_RECORDING_TYPES.TRANS_CREATE_BY_RFUSER IS 'Rimfire user performing insert row transaction';

COMMENT ON COLUMN rimfirede.VT_RECORDING_TYPES.TRANS_CREATE_DTM IS 'Row insert date and timestamp';

COMMENT ON COLUMN rimfirede.VT_RECORDING_TYPES.TRANS_BY_RFUSER IS 'Rimfire user performing transaction';

COMMENT ON COLUMN rimfirede.VT_RECORDING_TYPES.TRANS_DB_DTM IS 'Database transaction timestamp';

COMMENT ON COLUMN rimfirede.VT_RECORDING_TYPES.TRANS_DB_USERID IS 'Oracle user performing transaction';

COMMENT ON COLUMN rimfirede.VT_RECORDING_TYPES.TRANS_CREATE_USERID IS 'Oracle user performing insert row transaction';

COMMENT ON COLUMN rimfirede.VT_RECORDING_TYPES.DSS_SW IS 'Recording type used in DSS application';

COMMENT ON COLUMN rimfirede.VT_RECORDING_TYPES.IDT_SW IS 'Recording Type used in IDT application';


