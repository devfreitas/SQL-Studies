SET SERVEROUTPUT ON;
 ------ 1 ------
DECLARE
    num NUMBER (2) := &numero;
BEGIN
    IF num >= 1 THEN
        DBMS_OUTPUT.PUT_LINE('positivo');
    ELSIF num <= -1 THEN
        DBMS_OUTPUT.PUT_LINE('negativo');
    ELSE
        DBMS_OUTPUT.PUT_LINE('zero');
    END IF;
END;

 ------ 2 ------

DECLARE
    v_idade NUMBER := 20;
BEGIN
    IF v_idade BETWEEN 0 AND 12 THEN
        DBMS_OUTPUT.PUT_LINE('Criança');
    ELSIF v_idade BETWEEN 13 AND 17 THEN
        DBMS_OUTPUT.PUT_LINE('Adolescente');
    ELSIF v_idade BETWEEN 18 AND 64 THEN
        DBMS_OUTPUT.PUT_LINE('Adulto');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Idoso');
    END IF;
END;

 ------ 3 ------
DECLARE
    v_ano NUMBER := 2024; -- Altere o valor para testar
BEGIN
    IF (MOD(v_ano, 4) = 0 AND MOD(v_ano, 100) <> 0) 
       OR (MOD(v_ano, 400) = 0) THEN
        DBMS_OUTPUT.PUT_LINE('Ano bissexto');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Ano não é bissexto');
    END IF;
END;

 ------ 4 ------

DECLARE
    v_num1 NUMBER := 10; -- Altere para testar
    v_num2 NUMBER := 20; -- Altere para testar
BEGIN
    IF v_num1 > v_num2 THEN
        DBMS_OUTPUT.PUT_LINE('Maior');
    ELSIF v_num1 < v_num2 THEN
        DBMS_OUTPUT.PUT_LINE('Menor');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Igual');
    END IF;
END;

 ------ 5 ------

ACCEPT p_num1 NUMBER PROMPT 'Digite o primeiro número: '
ACCEPT p_num2 NUMBER PROMPT 'Digite o segundo número: '
ACCEPT p_operador CHAR PROMPT 'Digite o operador (+, -, *, /): '

DECLARE
    v_num1 NUMBER := &p_num1;
    v_num2 NUMBER := &p_num2;
    v_operador CHAR(1) := '&p_operador';
    v_resultado NUMBER;
BEGIN
    IF v_operador = '+' THEN
        v_resultado := v_num1 + v_num2;

    ELSIF v_operador = '-' THEN
        v_resultado := v_num1 - v_num2;

    ELSIF v_operador = '*' THEN
        v_resultado := v_num1 * v_num2;

    ELSIF v_operador = '/' THEN
        v_resultado := v_num1 / v_num2;

    ELSE
        DBMS_OUTPUT.PUT_LINE('Operador inválido.');
        RETURN;
    END IF;

    DBMS_OUTPUT.PUT_LINE('Resultado: ' || v_resultado);
END;
