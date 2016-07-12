SET serveroutput ON;
DECLARE
  v_empno emp.employee_id%type:=176;
  v_asterisk emp.stars%type   :=NULL;
  v_sal emp.salary%type;
BEGIN
  SELECT NVL(ROUND(salary/1000), 0)
  INTO v_sal
  FROM emp
  WHERE employee_id = v_empno;
  FOR i IN 1..v_sal
  LOOP
    v_asterisk := v_asterisk ||'*';
  END LOOP;
  UPDATE emp SET stars = v_asterisk WHERE employee_id = v_empno;
  COMMIT;
END;
SELECT employee_id,salary, stars FROM emp WHERE employee_id =176;