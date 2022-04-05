CREATE OR REPLACE package body user_util as
   procedure user_login( p_username in varchar2, p_password in varchar, p_retval out ui_facing.t_user_cur) as
   begin
        for rec in  (
                select * from users
                where upper( p_username) = upper( users.USERNAME)
                and p_password = users.PSW_TXT
       ) loop
            dbms_output.put_line( 'p_username: '||p_username);
            dbms_output.put_line( 'p_password: '||p_password);
            dbms_output.put_line( 'in loop: '|| rec.username);
        end loop;
        if sql%notfound then
            raise_application_error( -20012, 'user not found');
        end if;
        open p_retval for
        select * from users
        where upper( p_username) = upper( users.USERNAME)
          and p_password = users.PSW_TXT;
    end;
end;
/