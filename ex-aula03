 -- Criar um bloco PL-SQL para calcular o valor do novo salário mínimo que deverá ser de 25% em cima do atual, que é de R$ 1302.00

Declare
  v_sal_atual number (10,2) := 1302.00;
  v_sal_reaj number(10,2);
  Begin
  v_sal_reaj := v_sal_atual * 1.25;
  dbms_output.put_line('Salário atual - R$: '||v_sal_atual);
  dbms_output.put_line('Salário reajustado - R$: '||v_sal_reaj);
end;

-- Criar um bloco PL-SQL para calcular o valor em REAIS de 45 dólares, sendo que o valor do câmbio a ser considerado é de R$ 5.19.

declare
  v_dolar number(10,2) := 5.19;
  v_real v_dolar%type := v_dolar * 45;
begin
  dbms_output.put_line('Cotação dólar 15/02/2023: '||v_dolar);
  dbms_output.put_line('Conversão US$ 45.00 em R$: '||v_real);
end;

-- Criar um bloco PL-SQL para calcular o valor das parcelas de uma compra de um carro, nas seguintes condições:
-- 1 - Parcelas para aquisição em 10 pagamentos.
-- 2 - O valor da compra deverá ser informado em tempo de execução.
-- 3 - O valor total dos juros é de 3% e deverá ser aplicado sobre o montante financiado.
-- 4 - No final informar o valor de cada parcela

declare
  v_carro number(10,2) := &entrada;
  v_valor_final v_carro%type := (v_carro * 1.03) / 10;
begin
  dbms_output.put_line('Valor do bem: '||v_carro);
  dbms_output.put_line('Valor da prestação em 10x: '||v_valor_final);
end;

-- Criar um bloco PL-SQL para calcular o valor de cada parcela de uma compra de um carro, nas seguintes condições:
-- Deverá ser dada uma entrada de 20% do valor da compra.
-- Aplicar taxa de juros no saldo restante conforme as parcelas:
-- A - 6 parcelas: 10% de juros.
-- B - 12 parcelas: 15% de juros.
-- C - 18 parcelas: 20% de juros.
-- Informar o valor das parcelas para as 3 formas de pagamento, com o valor de aquisição de 10.000.

declare
  v_carro number(10,2) := 10000 * 0.8; -- Valor após 20% de entrada
  v_presta v_carro%type;
begin
  -- Pagamento em 6x
  v_presta := (v_carro * 1.1) / 6;
  dbms_output.put_line('Valor da prestação em 6x: '||v_presta);
  
  -- Pagamento em 12x
  v_presta := (v_carro * 1.15) / 12;
  dbms_output.put_line('Valor da prestação em 12x: '||v_presta);
  
  -- Pagamento em 18x
  v_presta := (v_carro * 1.2) / 18;
  dbms_output.put_line('Valor da prestação em 18x: '||v_presta);
end;

-- Criar um bloco PL-SQL para analisar a entrada de dados do sexo de um cliente. O bloco deverá receber o dado:
-- Para 'M' ou 'm': exibir "Masculino".
-- Para 'F' ou 'f': exibir "Feminino".
-- Qualquer dado fora desta configuração: exibir "Outros".

DECLARE
  v_sexo CHAR(1) := '&digite_o_sexo'; 
BEGIN
  IF v_sexo = 'M' OR v_sexo = 'm' THEN
    DBMS_OUTPUT.PUT_LINE('Masculino');
    
  ELSIF v_sexo = 'F' OR v_sexo = 'f' THEN
    DBMS_OUTPUT.PUT_LINE('Feminino');
    
  ELSE
    DBMS_OUTPUT.PUT_LINE('Outros');
    
  END IF; [cite: 222]
END;

