SET serveroutput ON;
DECLARE
  v_max_deptno NUMBER;
  v_dept_name departments.department_name%type:='Education';
  v_dept_id NUMBER;
BEGIN
  SELECT MAX(department_id) INTO v_max_deptno FROM departments;
  DBMS_OUTPUT.PUT_LINE('max department '||v_max_deptno);
  v_dept_id := 10 + v_max_deptno;
  delete from departments where department_id= 290;
  DBMS_OUTPUT.PUT_LINE (' SQL%ROWCOUNT gives ' || SQL%ROWCOUNT);
  --SELECT * FROM departments WHERE department_id= 300;
END;
/
