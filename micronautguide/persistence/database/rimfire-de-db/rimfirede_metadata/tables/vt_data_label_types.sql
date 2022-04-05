--DROP TABLE rimfirede.VT_MEDIA_TYPES CASCADE CONSTRAINTS;

CREATE TABLE rimfirede_metadata.vt_data_label_types
(
    data_label_type_id                uuid         DEFAULT uuid_generate_v4() constraint vt_data_label_types_pk PRIMARY KEY,
    data_label_type_name         VARCHAR(60)                            ,
    ROW_STATUS_IND         VARCHAR(2)   DEFAULT 'A'               NOT NULL,
    TRANS_CREATE_BY_UID    NUMERIC, --NOT NULL,
    TRANS_CREATE_DTM       TIMESTAMP(6) DEFAULT CURRENT_TIMESTAMP NOT NULL,
    TRANS_BY_UID           NUMERIC, --NOT NULL,
    TRANS_DB_DTM           TIMESTAMP(6) DEFAULT CURRENT_TIMESTAMP NOT NULL,
    TRANS_DB_USERID        VARCHAR(30)  DEFAULT USER              NOT NULL,
    TRANS_CREATE_USERID    VARCHAR(30)  DEFAULT USER,
    TRANS_BY_RFUSER        VARCHAR(512),
    TRANS_CREATE_BY_RFUSER VARCHAR(512)
);



