-- João Victor Veronesi RM565290
-- Rafael de Freitas Moraes RM563210

SET SERVEROUTPUT ON;
SET VERIFY OFF;

DECLARE
    v_salario NUMBER(10,2) := &salario;
    v_aliq16 NUMBER := 0.16;
    v_aliq285 NUMBER := 0.285;
    v_salario_liq NUMBER(10,2);
    v_x NUMBER(10,2);
BEGIN
    IF v_salario < 1513.69 THEN
        DBMS_OUTPUT.PUT_LINE('SALÁRIO: ' || v_salario);
    ELSIF v_salario >= 1513.69 AND v_salario <= 2725.12 THEN
        v_salario_liq := v_salario * v_aliq16;
        v_x := v_salario - v_salario_liq;
        DBMS_OUTPUT.PUT_LINE('SALÁRIO: ' || v_x);
    ELSIF v_salario > 2725.12 THEN
        v_salario_liq := v_salario * v_aliq285;
        v_x := v_salario - v_salario_liq;
        DBMS_OUTPUT.PUT_LINE('SALÁRIO: ' || v_x);
    ELSE
        DBMS_OUTPUT.PUT_LINE('Insira um valor válido!');
    END IF;
END;
/

DECLARE
    v_n1 NUMBER(4,2):= &n1;
    v_n2 NUMBER(4,2):= &n2;
    v_n3 NUMBER(4,2):= &n3;
    v_ch NUMBER(10,2):= &ch;
    v_nf NUMBER(10,2) := &nf;
    v_media NUMBER(4,2):= 0;
    v_pch NUMBER(20,2):= v_ch * 0.25;
    v_situacao VARCHAR2(60):= 'Verificando';

BEGIN
        IF v_n1 < v_n2 AND v_n1 < v_n3 THEN
            v_media := (v_n2 + v_n3) / 2;
        ELSIF v_n2 < v_n1 AND v_n2 < v_n3 THEN
            v_media := (v_n1 + v_n3) / 2 ;
        ELSE
            v_media := (v_n2 + v_n1) / 2;
    end IF;
        IF v_media >= 6 AND v_nf < v_pch THEN
            v_situacao := 'Aprovado';
        ELSIF v_media >= 6 AND v_nf >= v_pch THEN
            v_situacao :='Reprovado por faltas';
        ELSIF v_media >= 4 AND v_media < 6 AND v_nf < v_pch THEN
            v_situacao :='Exame';
        ELSIF v_media < 4 AND v_nf < v_pch THEN
            v_situacao:='Reprovado por nota';
        ELSIF v_media < 4 AND v_nf >= v_pch THEN
            v_situacao :='Reprovado por nota e falta';
        ELSE
            DBMS_OUTPUT.PUT_LINE('Insira um valor válido!');
    END IF;
        DBMS_OUTPUT.PUT_LINE('Situação: '|| v_situacao);
    END;
    /
