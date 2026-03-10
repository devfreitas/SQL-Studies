Aula 1

Comandos de ambiente
Habilitando saída de dados
set serveroutput on

Desabilitando resposta de variaveis
set verify off

Estrutura de um bloco anonimo

declare
    area de variaveis
    opcional
    begin
        processamento, decisão, looping
        saida de dados...
        corpo do programa
        obrigatorio
    exception
        tratamento de erros
        opcional
    end;


1o programa

begin
    dbms_output.put_line('Oi');
    end;
    
begin
    dbms_output.put_line(37);
    end;

begin
    dbms_output.put_line(10+3);
    end;

begin
    dbms_output.put_line('Oi');
    dbms_output.put_line('Isso e FIAP');
    end;

Variaveis de memoria

Declare
    v_n1 number(4,2) := 10;
    v_n2 varchar(25) := 'Isso é FIAP';
    begin
    dbms_output.put_line(v_n1);
    dbms_output.put_line(v_n2);
    end;
    
    Declare
    v_n1 number(4,2) := 10;
    v_n2 varchar(25) := 'Isso é FIAP';
    begin
    dbms_output.put_line(v_n1||' - '||v_n2);
    end;
    
    Declare
    v_n1 number(4,2) := 10;
    v_n2 number(4,2) := 10;
    v_n3 number(4,2);
    begin
    v_n3 := v_n1 + v_n2;
    dbms_output.put_line('A soma dos valores é: '||v_n3);
    end;
    
    Declare
    v_n1 number(4,2) := 10;
    v_n2 number(4,2) := 10;
    v_n3 number(4,2) := v_n1 + v_n2;
    begin
        dbms_output.put_line('A soma dos valores é: '||v_n3);
    end;
    
Variaveis de substituição e herança de estrutura

Declare
    v_n1 number(8,2) := &valor1;
    v_n2 v_n1%type := &valor2;
    v_n3 v_n1%type;
    begin
    v_n3 := v_n1 + v_n2;
    dbms_output.put_line('A soma dos valores é: '||v_n3);
    end;
    
Criar um programa que apresente a média aritmética de 4 números reais

Aula 2

Criar um bloco PL-SQL para calcular o valor do novo 
salário mínimo que deverá ser de 25% em cima do atual, que é de R$
???

declare
    v_sal number(10,2) := &salario;
    v_sal_final number(10,2) := v_sal * 1.25;
begin
    dbms_output.put_line('Salario Minimo R$ '||v_sal);
    dbms_output.put_line('Salario Minimo com + 25 % R$ '||v_sal_final);
end;

Criar um bloco PL-SQL para calcular o valor de cada 
parcela de uma compra de um carro, nas seguintes condições:
- Parcelas para aquisição em 6 pagamentos. 
- Parcelas para aquisição em 12 pagamentos. 
- Parcelas para aquisição em 18 pagamentos. 
OBSERVAÇÃO: 
1 – Deverá ser dada uma entrada de 20% do valor da compra. 
2 – Deverá ser aplicada uma taxa juros, no saldo restante, nas 
seguintes condições: 
3 – No final informar o valor das parcelas para as 3 formas de 
pagamento, com o Valor de aquisição de 10.000.
A – Pagamento em 6 parcelas: 10%. 
B – Pagamento em 12 parcelas: 15%. 
C – Pagamento em 18 parcelas: 20%.

declare
    v_total number(10,2) := 10000;
    v_financiado v_total%type := v_total * 0.8;
    v_parcela v_total%type;
    begin
    v_parcela := (v_financiado * 1.1) / 6;
    dbms_output.put_line('Valor da parcela em 6x - R$'||v_parcela);
    v_parcela := (v_financiado * 1.15) / 12;
    dbms_output.put_line('Valor da parcela em 12x - R$'||v_parcela);
    v_parcela := (v_financiado * 1.2) / 18;
    dbms_output.put_line('Valor da parcela em 18x - R$'||v_parcela);
end;

declare 
    v1 number(6,2) := &valor1;
    v2 v1%type := &valor2;
    v3 v1%type := &valor3;
    v4 v1%type := &valor4;
    v_media v1%type := (v1 + v2 + v3+ v4)/4;
    begin
        if v_media >= 6 then
            dbms_output.put_line('Média = '||v_media||' Situação aprovado');
        elsif v_media>= 4 and v_media <= 5.9 then
            dbms_output.put_line('Média = '||v_media||' Situação DP');
        else
            dbms_output.put_line('Média = '||v_media||' Situação reprovado');
        end if;
    end;
    

Aula 3 - Exercícios

Aula 4

CP1 - Dupla, consulta ao material de aula, professor
Data - 11/03/26 - Início as 08:00 término as 09:50

Simulado CP1

Entrada: valor do saldo da conta corrente
Entrada: tipo de conta: 1 - básica, 2 - especial
Entrada: 1 - saque, 2 - depósito
Entrada: valor do saque ou depósito
Processamento para depósito: somar valor de saldo com depósito
Processamento para saque: Conta normal: verificar se possui saldo,
			  saldo ok, realize o saque e atualize o saldo,
                          saldo insuficiente não realiza saque e informe o cliente.
Processamento para saque: Conta especial: verificar se possui saldo,
			  saldo ok, realize o saque e atualize o saldo,
              saldo insuficiente e dentro do limite que é 15% do saldo,
			  realize o saque e atualize o saldo,			  
			  saldo acima do limite de 15 do saldo não realize saque e informe o cliente.
Saída de dados, sempre informar o que está acontecendo:
			  - Entrada tipo de conta
			  - Entrada movimentação
			  - Valor do saque ou depósito
			  - Resultado da movimentação
			  - Atualização do saldo


Gabarito dos exercícios

Crie um bloco anônimo PL/SQL que verifique se um número fornecido é positivo, 
negativo ou zero. Exiba uma mensagem apropriada usando a estrutura IF.
Exemplo de Saída:
"Número positivo"
"Número negativo"
"Número é zero"

declare
    v_numero number(10,2) := &numero;
    begin
    if v_numero > 0 then
        dbms_output.put_line('Positivo');
    elsif v_numero < 0 then
        dbms_output.put_line('Negativo');
    else
        dbms_output.put_line('Zero');
    end if;
end;

Crie um bloco PL/SQL que avalie a idade de uma pessoa e determine se ela é criança,
adolescente, adulto ou idoso. Considere as faixas etárias:
-Criança: 0 a 12 anos
-Adolescente: 13 a 17 anos
-Adulto: 18 a 64 anos
-Idoso: 65 anos ou mais

declare
    v_idade number(3) := &idade;
    begin
    if v_idade >=0 and v_idade <= 12 then
        dbms_output.put_line('Criança');
    elsif v_idade > 12 and v_idade <= 17 then
        dbms_output.put_line('Adolescente');
    elsif v_idade > 17 and v_idade <= 64 then
        dbms_output.put_line('Adulto');
    elsif v_idade > 64  then
        dbms_output.put_line('Idoso');
    else
        dbms_output.put_line('Fora dos padrões');
    end if;
end;

Crie um bloco PL/SQL que verifique se um ano informado é bissexto. 
Um ano é bissexto se for divisível por 4, mas não divisível por 100, 
a menos que também seja divisível por 400.

SET SERVEROUTPUT ON;

DECLARE
    v_ano NUMBER := 2024; -- Altere aqui para testar
    v_data DATE;
BEGIN
    -- Tentamos criar a data 29/02 do ano escolhido
    v_data := TO_DATE('29/02/' || v_ano, 'DD/MM/YYYY');
    
    DBMS_OUTPUT.PUT_LINE(v_ano || ' é um ano bissexto.');

EXCEPTION
    WHEN OTHERS THEN
        -- Se o dia 29/02 não existir, o Oracle cai aqui
        DBMS_OUTPUT.PUT_LINE(v_ano || ' NÃO é um ano bissexto.');
END;
/

Crie um bloco PL/SQL que receba dois números e compare:
Se o primeiro número for maior que o segundo, exiba "Maior".
Se o primeiro número for menor que o segundo, exiba "Menor".
Se forem iguais, exiba "Igual".

declare
    v_num1 number(4) := &numero1;
    v_num2 number(4) := &numero2;
    begin
    if v_num1 > v_num2 then
        dbms_output.put_line('maior');
    elsif v_num1 < v_num2 then
        dbms_output.put_line('menor');
    else
        dbms_output.put_line('igual');
    end if;
end;

Crie um bloco PL/SQL que simule uma calculadora básica, realizando a operação indicada pelo usuário:
Se o operador for  +, realize uma soma.
Se o operador for  -, realize uma subtração.
Se o operador for  *, realize uma multiplicação.
Se o operador for  ", realize uma divisão.



