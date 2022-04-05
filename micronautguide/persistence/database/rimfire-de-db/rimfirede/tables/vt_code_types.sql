--DROP TABLE rimfirede.ASSESSMENTS CASCADE CONSTRAINTS;

CREATE TABLE rimfirede.vt_code_types
(
    code_type_id           uuid         DEFAULT uuid_generate_v4() constraint vt_code_types_pk primary key,
    code_type_text          VARCHAR(68)                            NOT NULL,
    code_type_description   text not null,
    ROW_STATUS_IND         VARCHAR(2)   DEFAULT 'A'               NOT NULL,
    TRANS_CREATE_BY_UID    NUMERIC, --NOT NULL,
    TRANS_CREATE_DTM       TIMESTAMP(6) DEFAULT CURRENT_TIMESTAMP NOT NULL,
    TRANS_BY_UID           NUMERIC, --NOT NULL,
    TRANS_DB_DTM           TIMESTAMP(6) DEFAULT CURRENT_TIMESTAMP NOT NULL,
    TRANS_DB_USERID        VARCHAR(30)  DEFAULT USER              NOT NULL,
    TRANS_CREATE_USERID    VARCHAR(30)  DEFAULT USER,
    TRANS_BY_RFUSER        VARCHAR(512),
    TRANS_CREATE_BY_RFUSER VARCHAR(512)
)
;


