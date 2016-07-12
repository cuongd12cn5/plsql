set serveroutput on;

declare
  v_customer varchar2(20) := 'Womersport';
  v_credit_rating VARCHAR2(30) := 'EXCELLENT';
begin
  declare
    v_customer number := 201;
  begin
    DBMS_OUTPUT.PUT_LINE('Customer: ' || v_customer);
    v_credit_rating := 'GOOD';
    DBMS_OUTPUT.PUT_LINE('Rating: ' || v_credit_rating);
  end;
  DBMS_OUTPUT.PUT_LINE('Outer Rating: ' || v_credit_rating);
end;