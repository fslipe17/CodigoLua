---- 1. Declaração de Variáveis e Operações Aritméticas --------------------
print("1. Declaracao de Variaveis e Operacoes Aritmeticas")

local n1 = 6
local n2 = 1

local soma = n1 + n2;
local subtracao = n1 - n2
divisao = n1 / n2
multiplicacao = n1 * n2
resto = n1 % n2


print("Soma dos numeros e: " ..soma)
print("Subtracao dos numeros e: " ..subtracao)
print("Divisao dos numeros e: " ..divisao)
print("Multiplicacao dos numeros e: " ..multiplicacao)
print("Resto da divisao dos numeros e: " ..resto)

print("")
------------- 2. Função para Somar Dois Números ------------------------------------
print("2. Funcao para Somar Dois Numeros")

local n1 = 8
local n2 = 2

function Soma (n1, n2)
    return n1 + n2
end

print(Soma(n1, n2))

print("")
------------- 3. Condicional Simples (if/else) ------------------------------------
print("3. Condicional Simples (if/else)")

local n1 = 1

if(n1 >= 10) then
    print("O numero e maior ou igual a 10")
else 
    print("O numero e menor que 10")
end

print("")
--------------------- 4. Criação e Manipulação de Arrays ---------------------------------------

local numeros = {10, 20, 30, 40, 50}

print("4. Criacao e Manipulacao de Arrays")
print("")
print("Array sem nenhuma Alteracao:")
print(numeros[1], numeros[2], numeros[3], numeros[4], numeros[5])
print("")

table.insert(numeros, 60)

print("")
print("Array depois de adcionar mais um numero inteiro: ")
print(numeros[1], numeros[2], numeros[3], numeros[4], numeros[5],  numeros[6])

print("")

table.insert(numeros, 70)

print("")
print("Array depois de adcionar mais um numero inteiro: ")
print(numeros[1], numeros[2], numeros[3], numeros[4], numeros[5], numeros[6], numeros[7])
print("")

table.remove(numeros, 3)

print("")
print("Array depois de retirar a posicao 3: ")
print(numeros[1], numeros[2],"", numeros[3], numeros[4], numeros[5], numeros[6], numeros[7])

print("")
------------------- 5. Loop para Iterar sobre um Array -----------------------------------------
print("5. Loop para Iterar sobre um Array")

local array = {1, 2, 3, 4, 5, 6}

for i = 1, #array do
    print(array[i])
end

print("")
-------------------- 6. Cálculo de Fatorial Usando while --------------------------------------------
print("6. Calculo de Fatorial Usando while")

function fatorial(n)
    local resultado = 1
    local i = n

    while i > 1 do
        resultado = resultado * i
        i = i - 1
    end

    return resultado
end

-- Testando a função
local numero = 5
print("O fatorial de " .. numero .. " e " .. fatorial(numero))

print("")
------------------- 7. Contagem de Caracteres em uma String ------------------
print("7. Contagem de Caracteres em uma String")

io.write("Digite uma palavra ou varios numeros: ")

local stringN = io.read()
print("")

print("Essa palavra/numero possui " .. #stringN .. " caracteres.")

print("")
----------------------- 8. Função para Reverter uma String ----------------------
print("8. Funcao para Reverter uma String")

function reverso(nome)
    local nomeReverso = string.reverse(nome)

    return nomeReverso
end

io.write("Digite seu nome: ")

local nome = io.read()

local nomeReverso = reverso(nome)

print("Seu nome de traz para frente e: " ..nomeReverso)

print("")
----------------- 9. Usando Tabelas como Dicionários (Mapas) ----------------------
print("9. Usando Tabelas como Dicionarios (Mapas)")

mapa = {
    nome = "Felipe",
    idade = 18,
    cidade = "Londrina",
}

print(mapa.nome)
print(mapa.idade)
print(mapa.cidade)

print("")
-------------------- 10. Função com Parâmetros Opcionais ---------------------------
print("10. Funcao com Parametros Opcionais")

function calculo(num1, num2, operador)
    if operador == "" then
        operador = "+"
    end

    local resultado

    if operador == "+" then
        resultado = num1 + num2

    elseif operador == "-" then
        resultado = num1 - num2

    elseif operador == "*" then
        resultado = num1 * num2

    elseif operador == "/" then
        if num2 ~= 0 then
            resultado = num1 / num2
        else
            return "Nao foi possível calcular pois o divisor e zero"
        end
    else
        return "Erro!"
    end

    return resultado
end

io.write("Digite um numero: ")
local num1 = io.read()

io.write("Digite outro numero: ")
local num2 = io.read()

io.write("Digite um operador matematico + - / *: ")
local operador = io.read()

print("")
print("Resultado do calculo e: " .. calculo(num1, num2, operador))

print("")
--------------------- 11. Array Multidimensional (Matriz 3x3) ------------------------
print("11. Array Multidimensional (Matriz 3x3)")

local matriz = {
    {1, 1, 1},
    {1, 1, 1},
    {1, 1, 1}
}

for i = 1, #matriz do
    for j = 1, #matriz[i] do
        io.write(matriz[i][j] .. " ")
    end
    print()
end

print("")
------------------ 12. Criação de Funções Anônimas --------------------------------------------------
print("12. Criacao de Funcoes Anonimas")

local funcaoAnonima = function()
    print("Funcao anonima em Lua")
end

funcaoAnonima()

print("")
------------------- 13. Função para Verificar se um Número é Par ou Ímpar ---------------------------
print("13. Funcao para Verificar se um Numero e Par ou Impar")

function parImpar(num)
    if num % 2 == 0 then
        return "O numero " .. num .. " e par."
    else
        return "O numero " .. num .. " e impar."
    end
end

io.write("Digite um numero: ")
local num = io.read()

print("")
print(parImpar(num))


print("")
------------------- 14. Ordenação de Arrays ---------------------------
print("14. Ordenacao de Arrays")

local numeros = {5, 2, 9, 1, 7, 4, 6}

table.sort(numeros)

print("Array ordenado:")
for i = 1, #numeros do
    io.write(numeros[i] .. " ")
end
print("")

print("")
------------------- 15. Contador de Palavras em uma String ---------------------------
print("15. Contador de Palavras em uma String")

function contadorPalavra(str)
    local contador = 0
    local i = 1

    while true do
        if i > #str then
            break
        end
        if str:sub(i, i) ~= " " then
            contador = contador + 1
            while i <= #str and str:sub(i, i) ~= " " do
                i = i + 1
            end
        else
            i = i + 1
        end
    end

    return contador
end

io.write("Digite uma frase: ")
local str = io.read()

print("Numero de palavras: " ..contadorPalavra(str))


print("")
---------------------------------- FIM DA ATIVIDADE PRATICA --------------------------------------- 