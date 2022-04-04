--DROP TABLE rimfirede.MEDIA CASCADE CONSTRAINTS;

CREATE TABLE rimfirede.MEDIA
(
    MEDIA_ID                uuid DEFAULT uuid_generate_v4 ()        constraint MEDIA_pk                    PRIMARY KEY,
    ASSESSMENT_ID           uuid               NOT NULL,
    MEDIA_TYPE_ID           uuid               NOT NULL,
    MEDIA_NAME              VARCHAR(100)     NOT NULL,
    MEDIA_bytea              bytea,
    MEDIA_THUMBNAIL         bytea,
    MEDIA_COMMENT           VARCHAR(4000),
    ROW_STATUS_IND          VARCHAR(2)      DEFAULT 'A'                   NOT NULL,
    TRANS_CREATE_BY_UID     NUMERIC                , --NOT NULL,
    TRANS_CREATE_DTM        TIMESTAMP(6)          DEFAULT CURRENT_TIMESTAMP          NOT NULL,
    TRANS_BY_UID            NUMERIC                , --NOT NULL,
    TRANS_DB_DTM            TIMESTAMP(6)          DEFAULT CURRENT_TIMESTAMP          NOT NULL,
    TRANS_DB_USERID         VARCHAR(30)     DEFAULT USER                  NOT NULL,
    TRANS_CREATE_USERID     VARCHAR(30)     DEFAULT USER,
    TRANS_BY_RFUSER         VARCHAR(512),
    TRANS_CREATE_BY_RFUSER  VARCHAR(512)
    --,MEDIA_TYPE_CD_V         VARCHAR(60) GENERATED ALWAYS AS (CAST("rimfirede"."GETCODETXT"('MEDIA_TYPE_CID',"MEDIA_TYPE_CID",'L') AS VARCHAR (60)))
);

COMMENT ON TABLE rimfirede.MEDIA IS 'Per induction, supporting media (enhancing observed inspection conditions) or customer mandated...i.e. PDF, JPG, etc';

COMMENT ON COLUMN rimfirede.MEDIA.MEDIA_ID IS 'System generated primary key';

COMMENT ON COLUMN rimfirede.MEDIA.ASSESSMENT_ID IS 'Foreign key pointer to parent table or table providing data integrity';

COMMENT ON COLUMN rimfirede.MEDIA.MEDIA_TYPE_ID IS 'Foreign key pointer to VT_MEDIA_TYPES table for media types';

COMMENT ON COLUMN rimfirede.MEDIA.MEDIA_NAME IS 'Physical identifier or name of the media file';

COMMENT ON COLUMN rimfirede.MEDIA.MEDIA_COMMENT IS 'A comment associated with the media file';

COMMENT ON COLUMN rimfirede.MEDIA.ROW_STATUS_IND IS 'State of the database row (A)ctive or (I)nactive.';

COMMENT ON COLUMN rimfirede.MEDIA.TRANS_CREATE_BY_UID IS 'Row creation activity identified by PK value of DSRSDB.USERS.USERID';

COMMENT ON COLUMN rimfirede.MEDIA.TRANS_CREATE_DTM IS 'Row insert date and timestamp';

COMMENT ON COLUMN rimfirede.MEDIA.TRANS_BY_UID IS 'Row activity identified by PK value of DSRSDB.USERS.USERID';

COMMENT ON COLUMN rimfirede.MEDIA.TRANS_DB_DTM IS 'Database transaction timestamp';

COMMENT ON COLUMN rimfirede.MEDIA.TRANS_DB_USERID IS 'Oracle userid performing transaction';

COMMENT ON COLUMN rimfirede.MEDIA.TRANS_CREATE_USERID IS 'Oracle userid creating transaction row';

COMMENT ON COLUMN rimfirede.MEDIA.TRANS_BY_RFUSER IS 'The RIMFIRE user that last changed data in the table row entry';

COMMENT ON COLUMN rimfirede.MEDIA.TRANS_CREATE_BY_RFUSER IS 'The RIMFIRE user that created the table row entry';














