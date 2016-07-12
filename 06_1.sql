set serveroutput on;
declare 
begin
  for counter in 1..10 loop
    if counter!=6 and counter!=8 then 
      insert into messages(results) values (counter);
    end if;
  end loop;
end;
--select * from messages