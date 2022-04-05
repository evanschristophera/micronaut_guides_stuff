--DROP TABLE rimfirede.VT_MEDIA_TYPES CASCADE CONSTRAINTS;

CREATE TABLE rimfirede.VT_MEDIA_TYPES
(
    MEDIA_TYPE_ID                  uuid DEFAULT  uuid_generate_v4 ()  constraint VT_MEDIA_TYPES_pk primary key,
    MEDIA_TYPE_CODE                VARCHAR(60)                                   NOT NULL,
    MEDIA_TYPE_DESC                VARCHAR(60)                                   NOT NULL,
    DISPLAY_ORDER_NUM              NUMERIC                DEFAULT 9999999999            NOT NULL,
    DEFAULT_IND                    VARCHAR(1)      DEFAULT 'N'                   NOT NULL,
    ROW_STATUS_IND                 VARCHAR(2)      DEFAULT 'A'                   NOT NULL,
    TRANS_CREATE_BY_UID            NUMERIC                                                      , --NOT NULL,
    TRANS_CREATE_DTM               TIMESTAMP(6)          DEFAULT CURRENT_TIMESTAMP          NOT NULL,
    TRANS_BY_UID                   NUMERIC                                                      , --NOT NULL,
    TRANS_DB_DTM                   TIMESTAMP(6)          DEFAULT CURRENT_TIMESTAMP          NOT NULL,
    TRANS_DB_USERID                VARCHAR(30)     DEFAULT USER                  NOT NULL,
    DETAIL_MEDIA_TYPE_DESC         VARCHAR(512),
    OVERRIDE_MEDIA_TYPE_DESC       VARCHAR(120),
    TRANS_CREATE_USERID            VARCHAR(30)     DEFAULT USER,
    TRANS_BY_RFUSER                VARCHAR(512),
    TRANS_CREATE_BY_RFUSER         VARCHAR(512)
);

COMMENT ON TABLE rimfirede.VT_MEDIA_TYPES IS 'Lookup table for media type code values';

COMMENT ON COLUMN rimfirede.VT_MEDIA_TYPES.MEDIA_TYPE_ID IS 'System generated primary key';

COMMENT ON COLUMN rimfirede.VT_MEDIA_TYPES.MEDIA_TYPE_CODE IS 'Media code value';

COMMENT ON COLUMN rimfirede.VT_MEDIA_TYPES.MEDIA_TYPE_DESC IS 'Media code value description';

COMMENT ON COLUMN rimfirede.VT_MEDIA_TYPES.DISPLAY_ORDER_NUM IS 'Screen display order';

COMMENT ON COLUMN rimfirede.VT_MEDIA_TYPES.DEFAULT_IND IS 'Indicates this is the default code for this code type (Y/N)';

COMMENT ON COLUMN rimfirede.VT_MEDIA_TYPES.ROW_STATUS_IND IS 'State of the database row (A)ctive or (I)nactive.';

COMMENT ON COLUMN rimfirede.VT_MEDIA_TYPES.TRANS_CREATE_BY_UID IS 'Row creation activity identified by PK value of USERS.USERID';

COMMENT ON COLUMN rimfirede.VT_MEDIA_TYPES.TRANS_CREATE_DTM IS 'Row insert date and timestamp';

COMMENT ON COLUMN rimfirede.VT_MEDIA_TYPES.TRANS_BY_UID IS 'Row activity identified by PK value of USERS.USERID';

COMMENT ON COLUMN rimfirede.VT_MEDIA_TYPES.TRANS_DB_DTM IS 'Database transaction timestamp';

COMMENT ON COLUMN rimfirede.VT_MEDIA_TYPES.TRANS_DB_USERID IS 'Oracle userid performing transaction';

COMMENT ON COLUMN rimfirede.VT_MEDIA_TYPES.DETAIL_MEDIA_TYPE_DESC IS 'Expanded text version that details the MEDIA_TYPE_DESC value meaning or description';

COMMENT ON COLUMN rimfirede.VT_MEDIA_TYPES.OVERRIDE_MEDIA_TYPE_DESC IS 'Special text to be used or ''override'' the MEDIA_TYPE_DESC value (i.e. use a preferred, more user-friendly text in menu selections)';

COMMENT ON COLUMN rimfirede.VT_MEDIA_TYPES.TRANS_CREATE_USERID IS 'Oracle userid creating transaction row';

COMMENT ON COLUMN rimfirede.VT_MEDIA_TYPES.TRANS_BY_RFUSER IS 'The rimfirede user that last changed data in the table row entry';

COMMENT ON COLUMN rimfirede.VT_MEDIA_TYPES.TRANS_CREATE_BY_RFUSER IS 'The rimfirede user that created the table row entry';