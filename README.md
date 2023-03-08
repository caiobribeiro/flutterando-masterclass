# flutterando-masterclass
Desenvolvimento dos desafio do curso Flutterando MasterClass 07 


Vamos começar com um bem simples e outro mais avançado.

IMC - DESAFIO MASTERCLASS 

O (IMC) índice de massa corporal é baseado na altura e peso do individuo.
O calculo é representado por Dividir o peso pela Altura ao quadradro²

Cria uma função que realize o calculo de IMC.



Fibonacci - DESAFIO MASTERCLASS

Na matemática, a sucessão de Fibonacci (ou sequência de Fibonacci), é uma sequência de números inteiros, começando normalmente por 0 e 1, na qual cada termo subsequente corresponde à soma dos dois anteriores. A sequência recebeu o nome do matemático italiano Leonardo de Pisa, mais conhecido por Fibonacci, que descreveu, no ano de 1202, o crescimento de uma população de coelhos, a partir desta. Esta sequência já era, no entanto, conhecida na antiguidade.

Regra de 3

Uma das coisas mais úteis que aprendemos no ensino médio é a "Regra de 3".
Consiste quando temos 3 valores e precisamos saber o quarto.
Geralmente temos dois grupos, e o calculo é feito multiplicando paralelamente os valores entre os dois grupos. Ex:
--
Grupo1.1             Grupo1.2
                   X
Grupo2.1            Grupo2.2
--
Grupo1.1 x Grupo2.2 = Grupo2.1 x Grupo1.2

Sabendo disso, crie uma função que receba 4 argumentos opcionais e que retorne a resolução da regra de 3, levando em consideração que será considerado o argumento vário como valor a ser encontrado, logo, poderá ter apenas um valor necessáriamente "vazio".



4 - DESAFIO MASTERCLASS

Construa uma classe que valide um CPF recebendo um valor String por construtor e um método de validação retornando um booleano.

O CPF tem dois dígitos verificadores que são os dois últimos números do CPF.

- Cálculo do primeiro dígito verificar:

1. O primeiro passo é calcular o primeiro dígito verificador, e para isso, separamos os primeiros 9 dígitos do CPF (111.444.777) e multiplicamos cada um dos números, da direita para a esquerda por números crescentes a partir do número 2.

2. Multiplique cada digito do CPF pelo respectivo número e somamos cada um dos resultados.

3. Divida o valor obtido por 11. Trabalharemos com o RESTO e não com o VALOR da divisão.

4. Se o resto da divisão for menor que 2, então o dígito é igual a 0 (Zero).
 Se o resto da divisão for maior ou igual a 2, então o dígito verificador é igual a 11 menos o resto da divisão (11 - resto).

O Resultado deve ser igual ao primeiro dígito verificador.

- Cálculo do segundo dígito verificar:

1. Pegaremos os primeiros 10 dígitos do CPF (111.444.777-1) e multiplicamos cada um dos números, da direita para a esquerda por números crescentes a partir do número 2.

2. Com o resultado em mãos, siga os passos 2, 3 e 4 do cálculo do primeiro dígito.

O Resultado deve ser igual ao segundo dígito verificador.