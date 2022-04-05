ALTER TABLE rimfirede.USERS ADD
  CONSTRAINT CHK_USERS_USERNAME_UPPER
  CHECK ( username = upper( username))
;