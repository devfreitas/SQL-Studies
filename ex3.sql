SET SERVEROUTPUT ON;

DECLARE
    v_total_vendas NUMBER := &total_vendas;
    v_percentual_meta NUMBER(3) := &percentual_meta;
    v_tipo_comissao NUMBER(1) := &tipo_comissao;
    v_percentual_comissao NUMBER := &percentual_comissao;
    v_comissaoNUMBER;

BEGIN
    DBMS_OUTPUT.PUT_LINE('Valor total de vendas: ' || v_total_vendas);
    DBMS_OUTPUT.PUT_LINE('Percentual de meta atingida: ' || v_percentual_meta);
    DBMS_OUTPUT.PUT_LINE('Tipo de comissão: ' || v_tipo_comissao);
    DBMS_OUTPUT.PUT_LINE('Percentual comissão: ' || v_percentual_comissao);

    IF v_tipo_comissao = 1 THEN
        v_comissao := v_total_vendas * (v_percentual_comissao / 100);
        DBMS_OUTPUT.PUT_LINE('Comissão fixa calculada.');
        DBMS_OUTPUT.PUT_LINE('Valor da comissão: ' || v_comissao);
    ELSIF v_tipo_comissao = 2 THEN
        IF v_percentual_meta < 70 THEN
            v_comissao := 0;
            DBMS_OUTPUT.PUT_LINE('Meta abaixo de 70%. Não recebe comissão.');
        ELSIF v_percentual_meta >= 70 AND v_percentual_meta < 90 THEN
            v_comissao := v_total_vendas * (v_percentual_comissao / 100);
            DBMS_OUTPUT.PUT_LINE('Meta entre 70% e 89%. Comissão normal aplicada.');
        ELSIF v_percentual_meta >= 90 THEN
            v_comissao := v_total_vendas * ((v_percentual_comissao + 5) / 100);
            DBMS_OUTPUT.PUT_LINE('Meta acima de 90%. Comissão com bônus aplicada.');
        END IF;
        DBMS_OUTPUT.PUT_LINE('Valor da comissão: ' || v_comissao);
    ELSE 
        DBMS_OUTPUT.PUT_LINE('Tipo de comissão inválido.');
    END IF;
END;
/



