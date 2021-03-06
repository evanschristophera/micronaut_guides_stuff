CREATE TABLE rimfirede.users
(
    USER_ID                   uuid DEFAULT uuid_generate_v4 () constraint users_pk primary key,
    USERNAME                  VARCHAR(30)   NOT NULL,
    LAST_NAME                 VARCHAR(32)   NOT NULL,
    FIRST_NAME                VARCHAR(32)   NOT NULL,
    ORGANIZATION_ID           NUMERIC,
    EMAIL_ADDR                VARCHAR(50),
    PHONE_NBR                 VARCHAR(20),
    PHONE_EXT                 VARCHAR(6),
    TYPE_IND                  VARCHAR(1)    NOT NULL,
    PSW_SALT                  VARCHAR(64)   NOT NULL,
    PSW_HASH                  VARCHAR(128)   NOT NULL,
    PSW_NEW_DTM               TIMESTAMP(6),
    LAST_LOGIN_DTM            TIMESTAMP(6),
    PSW_CHANGE_IND            VARCHAR(1),
    TRANS_CREATE_DTM          TIMESTAMP(6)        NOT NULL,
    STATUS_IND                VARCHAR(1)    NOT NULL,
    LOGIN_FAILURE_CNT         NUMERIC,
    LOGIN_FAILURE_DTM         TIMESTAMP(6),
    DIVISION_ID               NUMERIC,
    IAA_DT                    DATE,
    PKI_EXPIRE_DT             DATE,
    APPROVED_BY_NAME          VARCHAR(50),
    CAR_NAME                  VARCHAR(50),
    CAR_PHONE_NBR             VARCHAR(20),
    INSPECTOR_SW              VARCHAR(1),
    TRANS_CREATE_USERID       VARCHAR(30),
    INSPECTOR_ACTIVATION_DTM  TIMESTAMP(6),
    TRANS_DB_DTM              TIMESTAMP(6),
    TRANS_DB_USERID           VARCHAR(30),
    TRANS_CREATE_BY_RFUSER    VARCHAR(512),
    TRANS_BY_RFUSER           VARCHAR(512)
)
