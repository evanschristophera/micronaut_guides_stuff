--DROP TABLE rimfirede.RECORDINGS CASCADE CONSTRAINTS;

CREATE TABLE rimfirede.RECORDINGS
(
  RECORDING_ID            uuid DEFAULT uuid_generate_v4 () constraint RECORDINGS_pk  PRIMARY KEY,
  COMPOSITION_ID          uuid               NOT NULL,
  RECORDING_TYPE_ID       uuid               NOT NULL,
  REC_VALUE_NUM           NUMERIC,
  ROW_STATUS_IND          VARCHAR(2)      DEFAULT 'A'                   NOT NULL check( ROW_STATUS_IND in ('A', 'I')),
  TRANS_CREATE_BY_UID     NUMERIC                , --NOT NULL,
  TRANS_CREATE_DTM        TIMESTAMP(6)          DEFAULT CURRENT_TIMESTAMP          NOT NULL,
  TRANS_BY_UID            NUMERIC                , --NOT NULL,
  TRANS_DB_DTM            TIMESTAMP(6)          DEFAULT CURRENT_TIMESTAMP          NOT NULL,
  TRANS_DB_USERID         VARCHAR(30)     DEFAULT USER                  NOT NULL,
  TRANS_CREATE_USERID     VARCHAR(30)     DEFAULT USER                  NOT NULL,
  TRANS_BY_RFUSER         VARCHAR(512),
  TRANS_CREATE_BY_RFUSER  VARCHAR(512)
)
;