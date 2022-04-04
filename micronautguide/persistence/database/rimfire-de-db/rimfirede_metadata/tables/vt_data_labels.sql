--DROP TABLE rimfirede.VT_MEDIA_TYPES CASCADE CONSTRAINTS;

CREATE TABLE rimfirede_metadata.vt_data_labels
(
    DATA_LABEL_ID          uuid         DEFAULT uuid_generate_v4() constraint vt_data_labels_pk PRIMARY KEY,
    DATA_LABEL_TYPE_ID     uuid         not null references rimfirede_metadata.vt_data_label_types,
    DATA_LABEL_TXT         varchar(512),
    DETAIL_LABEL_TEXT      varchar(512),
    OVERRIED_LABEL_TEXT    varchar(512),
    UNIT_OF_MEASURE_IND    varchar(30),
    UOM_SHORT_TXT          varchar(30),
    UOM_LONG_TXT           varchar(60),
    FORMAT_TXT             varchar(30),
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


