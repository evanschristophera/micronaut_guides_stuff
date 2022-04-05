--DROP TABLE rimfirede.ASSESSMENTS CASCADE CONSTRAINTS;

CREATE TABLE rimfirede.ASSESSMENTS
(
    ASSESSMENT_ID           uuid         DEFAULT uuid_generate_v4() constraint ASSESSMENTS_pk primary key,
    SYSTEM_ID               uuid                                   NOT NULL,
    ASSESSMENT_HIERARCHY_ID uuid                                   NOT NULL,
    ASSESSMENT_NAME         VARCHAR(68)                            NOT NULL,
    ASSESSMENT_DT           DATE                                   NOT NULL,
    BOARD_STATE_IND         VARCHAR(1)   DEFAULT 'P'               NOT NULL,
    TRANS_CREATE_DTM        TIMESTAMP(6) DEFAULT CURRENT_TIMESTAMP NOT NULL,
    row_status_ind          varchar(1) default 'A' check ( row_status_ind in ( 'A', 'I'))
)
;


