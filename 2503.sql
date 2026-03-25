SET SERVEROUTPUT ON;

-- loop
DECLARE
    v_contador NUMBER(2) := 1;
BEGIN
LOOP
    DBMS_OUTPUT.PUT_LINE(v_contador);
    v_contador := v_contador + 1;
    EXIT WHEN v_contador > 20;
END LOOP;
END

-- while
DECLARE
    v_contador NUMBER(2) := 1;
BEGIN
WHILE v_contador <= 20 LOOP
    DBMS_OUTPUT.PUT_LINE(v_contador);
    v_contador := v_contador + 1;
END LOOP;
END

-- for
BEGIN
FOR v_contador IN 1..20 LOOP
    DBMS_OUTPUT.PUT_LINE(v_contador);
END LOOP;
END

-- reverse
BEGIN
FOR v_contador IN REVERSE 1..20 LOOP
    DBMS_OUTPUT.PUT_LINE(v_contador);
END LOOP;
END
