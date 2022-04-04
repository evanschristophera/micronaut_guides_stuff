CREATE OR REPLACE package body ui_facing as
    procedure user_login( p_username in varchar2, p_password in varchar, p_retval out ui_facing.t_user_cur) as
    begin
        user_util.user_login( p_username, p_password, p_retval);
    end;
end;
/