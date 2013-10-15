SET SERVEROUTPUT ON;

DECLARE
  c number;
BEGIN
  for c in 1 .. 6
  loop
    dbms_output.put_line(c);
  end loop;
  
END;