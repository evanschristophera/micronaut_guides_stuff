CREATE OR REPLACE package user_util as
    procedure user_login( p_username in varchar2, p_password in varchar, p_retval out ui_facing.t_user_cur);
end;
/