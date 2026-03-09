-- Sistema de Cálculo de nota de Aluno
SET SERVEROUTPUT ON;

DECLARE
    v_nota_prova      NUMBER(4,2) := &nota_prova;  
    -- CORREÇÃO: NUMBER(2) não permite casas decimais. Nota pode ser 7.5, por exemplo.

    v_nota_trabalho   NUMBER(4,2) := &nota_trabalho;
    v_presenca        NUMBER(3)   := &presenca;
    v_tipo            NUMBER(1)   := &tipo;
    v_peso            NUMBER(2)   := &peso;
    v_media           NUMBER(5,2);

BEGIN
    DBMS_OUTPUT.PUT_LINE('Tipo de cálculo: ' || v_tipo);
    DBMS_OUTPUT.PUT_LINE('Nota da Prova: ' || v_nota_prova);
    DBMS_OUTPUT.PUT_LINE('Nota do Trabalho: ' || v_nota_trabalho);
    DBMS_OUTPUT.PUT_LINE('Porcentagem de Presença: ' || v_presenca);
    DBMS_OUTPUT.PUT_LINE('Peso: ' || v_peso);

    -- PRIMEIRO: verificar tipo de cálculo
    IF v_tipo = 2 THEN

        -- CORREÇÃO IMPORTANTE:
        -- A média deve ser calculada ANTES de testar aprovação.
        v_media := (v_nota_prova * v_peso + 
                   v_nota_trabalho * (10 - v_peso)) / 10;

        -- CORREÇÃO:
        -- Regra era presença < 75 (não <= 75)
        IF v_presenca < 75 THEN
            DBMS_OUTPUT.PUT_LINE('Reprovado por faltas.');
        
        ELSIF v_media >= 7 THEN
            DBMS_OUTPUT.PUT_LINE('Aprovado!');
        
        -- CORREÇÃO:
        -- Média entre 5 e 6.9 → usar >= 5 e < 7
        ELSIF v_media >= 5 AND v_media < 7 THEN
            DBMS_OUTPUT.PUT_LINE('Recuperação!');
        
        ELSE
            DBMS_OUTPUT.PUT_LINE('Reprovado por nota.');
        END IF;  -- CORREÇÃO: faltava fechar o IF interno

    ELSIF v_tipo = 1 THEN

        -- CORREÇÃO:
        -- Faltava ponto e vírgula na sua versão
        v_media := (v_nota_prova + v_nota_trabalho) / 2;

        IF v_presenca < 75 THEN
            DBMS_OUTPUT.PUT_LINE('Reprovado por faltas.');
        
        ELSIF v_media >= 7 THEN
            DBMS_OUTPUT.PUT_LINE('Aprovado!');
        
        ELSIF v_media >= 5 AND v_media < 7 THEN
            DBMS_OUTPUT.PUT_LINE('Recuperação!');
        
        ELSE
            DBMS_OUTPUT.PUT_LINE('Reprovado por nota.');
        END IF;  -- CORREÇÃO: faltava fechar IF interno

    ELSE
        DBMS_OUTPUT.PUT_LINE('Tipo de cálculo inválido.');
    
    END IF;  -- CORREÇÃO: faltava fechar IF principal

    DBMS_OUTPUT.PUT_LINE('Média calculada: ' || v_media);

END;
/
