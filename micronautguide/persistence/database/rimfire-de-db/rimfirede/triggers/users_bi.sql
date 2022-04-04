CREATE OR REPLACE TRIGGER USERS_BI
BEFORE INSERT
ON USERS
REFERENCING NEW AS New OLD AS Old
FOR EACH ROW
DECLARE

BEGIN
    :new.username := upper( :new.username);
    if :new.user_id is null then
        :new.user_id := martha_user_seq.nextval;
    end if;
END users_bi;
/