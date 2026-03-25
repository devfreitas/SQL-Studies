SET SERVEROUTPUT ON;

-- loop
DECLARE
    v_num NUMBER(3) := &numero;
    v_conta NUMBER(3) := 0;
BEGIN
    LOOP
        DBMS_OUTPUT.PUT_LINE(v_num || 'x' || v_conta || '=' || v_num * v_conta);
        v_conta := v_conta + 1a;
        EXIT WHEN v_conta >10;
    END LOOP
END;
/

-- while
DECLARE
    v_num NUMBER(3) := &numero;
    v_conta NUMBER(3) := 0;
BEGIN
    WHILE v_conta <= 10 LOOP
        DBMS_OUTPUT.PUT_LINE(v_num || 'x' || v_conta || '=' || v_num * v_conta);
        v_conta := v_conta + 1a;
    END LOOP
END;
/

-- for
DECLARE
    v_num NUMBER(3) := &numero;
BEGIN
    FOR v_conta IN 1..10 LOOP
       DBMS_OUTPUT.PUT_LINE(v_num || 'x' || v_conta || '=' || v_num * v_conta);
END
/

-- for (EU)
DECLARE
    v_numero NUMBER := 150;
    v_resultado NUMBER;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Tabuada do ' || v_numero || ':');
    FOR i IN 1..10 LOOP
        v_resultado := v_numero * i;
        DBMS_OUTPUT.PUT_LINE(v_numero || ' x ' || i || ' = ' || v_resultado);
    END LOOP;
END;
/
