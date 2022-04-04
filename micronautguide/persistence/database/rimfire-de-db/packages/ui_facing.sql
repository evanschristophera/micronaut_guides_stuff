CREATE OR REPLACE package ui_facing as

    type user_rec is record (
        USERID                    NUMERIC               ,
        USERNAME                  VARCHAR(30)    ,
        LAST_NAME                 VARCHAR(32)    ,
        FIRST_NAME                VARCHAR(32)    ,
        ORGANIZATION_ID           NUMERIC,
        EMAIL_ADDR                VARCHAR(50),
        PHONE_NBR                 VARCHAR(20),
        PHONE_EXT                 VARCHAR(6),
        TYPE_IND                  VARCHAR(1)     ,
        PSW_TXT                   VARCHAR(256),
        PSW_NEW_DTM               TIMESTAMP(6),
        LAST_LOGIN_DTM            TIMESTAMP(6),
        PSW_CHANGE_IND            VARCHAR(1),
        TRANS_CREATE_DTM          TIMESTAMP(6)         ,
        STATUS_IND                VARCHAR(1)     ,
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
        TRANS_CREATE_BY_UID       NUMERIC               ,
        TRANS_BY_UID              NUMERIC               ,
        TRANS_CREATE_BY_RFUSER    VARCHAR(512),
        TRANS_BY_RFUSER           VARCHAR(512)
   );
    type t_user_cur is ref cursor return user_rec;

    procedure user_login( p_username in varchar2, p_password in varchar, p_retval out ui_facing.t_user_cur);

end;
/