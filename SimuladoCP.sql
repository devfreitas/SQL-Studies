SET SERVEROUTPUT ON;

DECLARE
    v_saldo        NUMBER := &saldo;
    v_tipo_conta   NUMBER := &tipo_conta;       
    v_movimentacao NUMBER := &movimentacao;   
    v_valor        NUMBER := &valor;            
    
    v_limite NUMBER;
    
BEGIN
    DBMS_OUTPUT.PUT_LINE('Tipo de conta 1 - básica, 2 - especial: ' || v_tipo_conta);
    DBMS_OUTPUT.PUT_LINE('Tipo de movimentação 1 - saque, 2 - depósito: ' || v_movimentacao);
    DBMS_OUTPUT.PUT_LINE('Valor: ' || v_valor);

    IF v_movimentacao = 2 THEN
        v_saldo := v_saldo + v_valor;
        DBMS_OUTPUT.PUT_LINE('Depósito realizado com sucesso.');
    
    ELSIF v_movimentacao = 1 THEN
        
        IF v_tipo_conta = 1 THEN
            IF v_saldo >= v_valor THEN
                v_saldo := v_saldo - v_valor;
                DBMS_OUTPUT.PUT_LINE('Saque realizado com sucesso.');
            ELSE
                DBMS_OUTPUT.PUT_LINE('Saldo insuficiente. Saque não realizado.');
            END IF;

        ELSIF v_tipo_conta = 2 THEN
            v_limite := v_saldo * 0.15;

            IF v_saldo >= v_valor THEN
                v_saldo := v_saldo - v_valor;
                DBMS_OUTPUT.PUT_LINE('Saque realizado com sucesso.');
            
            ELSIF v_valor <= (v_saldo + v_limite) THEN
                v_saldo := v_saldo - v_valor;
                DBMS_OUTPUT.PUT_LINE('Saque realizado usando limite de 15%.');
            
            ELSE
                DBMS_OUTPUT.PUT_LINE('Valor ultrapassa o limite permitido. Saque não realizado.');
            END IF;

        ELSE
            DBMS_OUTPUT.PUT_LINE('Tipo de conta inválido.');
        END IF;

    ELSE
        DBMS_OUTPUT.PUT_LINE('Tipo de movimentação inválido.');
    END IF;

    DBMS_OUTPUT.PUT_LINE('Saldo atual: ' || v_saldo);

END;
