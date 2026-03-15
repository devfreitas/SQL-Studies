-- Dado um salário X calcule o salário líquido, sendo que os descontos de IRPF ocorrem conforme a tabela abaixo:
-- Base de cálculo mensal em R$                       Alíquota (%)
-- Até 1.513,69  (Inclusive)                               -
-- De 1.513,69 até 2.725,12 (Inclusive)                  16.00
-- Acima de 2.725,12                                     28,50

SET SERVEROUTPUT ON;

DECLARE
    v_salario     NUMBER(10,2) := &salario;
    v_salario_liq NUMBER(10,2);

BEGIN
    IF v_salario <= 1513.69 THEN
        v_salario_liq := v_salario; -- Isento

    ELSIF v_salario <= 2725.12 THEN
        -- Subtrai 16% do bruto
        v_salario_liq := v_salario - (v_salario * 0.16);
        
    ELSE
        -- Subtrai 28.5% do bruto
        v_salario_liq := v_salario - (v_salario * 0.285);
        
    END IF;

    -- Exibição simples do resultado
    DBMS_OUTPUT.PUT_LINE('Salario Liquido: ' || v_salario_liq);
END;
/
