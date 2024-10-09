---- 1. Declaração de Variáveis e Operações Aritméticas --------------------

-- local n1 = 6
-- local n2 = 1

-- local soma = n1 + n2;
-- local subtracao = n1 - n2
-- divisao = n1 / n2
-- multiplicacao = n1 * n2
-- resto = n1 % n2


-- print("Soma dos numeros e: " ..soma)
-- print("Subtracao dos numeros e: " ..subtracao)
-- print("Divisao dos numeros e: " ..divisao)
-- print("Multiplicacao dos numeros e: " ..multiplicacao)
-- print("Resto da divisao dos numeros e: " ..resto)

------------- 2. Função para Somar Dois Números ------------------------------------

-- local n1 = 8
-- local n2 = 2

-- function Soma (n1, n2)
--     return n1 + n2
-- end

-- print(Soma(n1, n2))

------------- 3. Condicional Simples (if/else) ------------------------------------

-- local n1 = 10

-- if(n1 >= 10) then
--     print("O numero e maior ou igual a 10")
-- else 
--     print("O numero e menor que 10")
-- end

--------------------- 4. Criação e Manipulação de Arrays ---------------------------------------

local numeros = {1,4,5,9,12}

table.insert(numeros, 45)

table.insert(numeros, 54)

table.remove(numeros, 3)

------------------- 5. Loop para Iterar sobre um Array -----------------------------------------

local lista = {"java", "python", "c++"}

print("Lista das limguagens de programação: ")

for i = 1, #lista do
   print("-"..lista[i])
end

-------------------- 6. Cálculo de Fatorial Usando while --------------------------------------------

local num = 4
local fatoracao = 1

print("Confira o fatorial do número "..num)

while num > 1 do
    fatoracao = fatoracao * num
    num = num - 1
end

print("Corresponde à: "..fatorial )
