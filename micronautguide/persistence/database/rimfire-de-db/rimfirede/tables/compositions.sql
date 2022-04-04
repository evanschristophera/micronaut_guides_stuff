CREATE TABLE rimfirede.COMPOSITIONS
(
    COMPOSITION_ID         uuid         DEFAULT uuid_generate_v4() constraint COMPOSITIONS_pk PRIMARY KEY,
    ASSESSMENT_ID          uuid                                   NOT NULL,
    HIERARCHY_ID           uuid                                   NOT NULL,
    SYSTEM_ID              uuid                                   NOT NULL,
    PART_ID                uuid references rimfirededb.rimfirede.parts,
    LEVEL_NUM              NUMERIC                                NOT NULL,
    SERIAL_NBR             VARCHAR(25),
    -- check constraints for UI visible values makes localization difficult
    INSPECTION_STATUS      VARCHAR(25)  DEFAULT 'NOT_INSPECTED'   NOT NULL check ( INSPECTION_STATUS in ('MISSING', 'INSPECTED', 'NOT_INSPECTED')),
    ROW_STATUS_IND         VARCHAR(2)   DEFAULT 'A'               NOT NULL check ( ROW_STATUS_IND in ('A', 'I')),
    TRANS_CREATE_BY_UID    NUMERIC      DEFAULT 0                 NOT NULL,
    TRANS_CREATE_DTM       TIMESTAMP(6) DEFAULT CURRENT_TIMESTAMP NOT NULL,
    TRANS_BY_UID           NUMERIC      DEFAULT 0                 NOT NULL,
    TRANS_DB_DTM           TIMESTAMP(6) DEFAULT CURRENT_TIMESTAMP NOT NULL,
    TRANS_DB_USERID        VARCHAR(30)  DEFAULT USER              NOT NULL,
    TRANS_CREATE_USERID    VARCHAR(30)  DEFAULT USER,
    MFG_CAGE_CD            VARCHAR(5),
    REPAIR_TYPE_IND        VARCHAR(10),
    TRANS_BY_RFUSER        VARCHAR(512),
    TRANS_CREATE_BY_RFUSER VARCHAR(512),
    FIELD_MAINTENANCE_ID   NUMERIC,
    NON_MANDATORY_PART_IND VARCHAR(1)
)
;
