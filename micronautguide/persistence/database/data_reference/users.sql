SET DEFINE OFF;
Insert into USERS
   (USER_ID, USERNAME, LAST_NAME, FIRST_NAME, TYPE_IND, 
    PSW_TXT, TRANS_CREATE_DTM, STATUS_IND, TRANS_CREATE_BY_UID, TRANS_BY_UID)
 Values
   (10017, 'JOE', 'Snert', 'Joe', 'A', 
    '5f4dcc3b5aa765d61d8327deb882cf99', TO_TIMESTAMP('5/17/2019 10:40:33.628719 AM','fmMMfm/fmDDfm/YYYY fmHH12fm:MI:SS.FF AM'), 'A', 0, 0);
Insert into USERS
   (USER_ID, USERNAME, LAST_NAME, FIRST_NAME, TYPE_IND, 
    PSW_TXT, TRANS_CREATE_DTM, STATUS_IND, TRANS_CREATE_BY_UID, TRANS_BY_UID)
 Values
   (10019, 'GERTRUDE', 'Snert', 'Joe', 'A', 
    '5f4dcc3b5aa765d61d8327deb882cf99', TO_TIMESTAMP('5/23/2019 2:53:43.494894 PM','fmMMfm/fmDDfm/YYYY fmHH12fm:MI:SS.FF AM'), 'A', 0, 0);
COMMIT;
