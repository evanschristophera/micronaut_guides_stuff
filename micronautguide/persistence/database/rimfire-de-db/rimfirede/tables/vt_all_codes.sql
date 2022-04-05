--DROP TABLE rimfirede.VT_MEDIA_TYPES CASCADE CONSTRAINTS;

CREATE TABLE rimfirede.vt_all_codes
(
    code_id                uuid         DEFAULT uuid_generate_v4()  constraint vt_all_codes_pk PRIMARY KEY,
    CODE_TYPE_ID           uuid         references rimfirede.vt_code_types( code_type_id ),
    CODE_TXT               VARCHAR(60)                            ,
    DETAIL_CODE_TXT        VARCHAR(512)                         ,
    DISPLAY_ORDER_NUM      NUMERIC      DEFAULT 9999999999        NOT NULL,
    OVERRIDE_CODE_TXT     VARCHAR(512)                         ,
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

comment on table rimfirede.VT_condition_codes is 'Lookup table of condition decriptions per condition code';


comment on column rimfirede.VT_condition_codes.CONDITION_CODE_ID is 'System generated primary key of table CONDITION_CODES';


comment on column rimfirede.VT_condition_codes.CONDITION_CODE_TXT is 'The textual value of the condition code';


