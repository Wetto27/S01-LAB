tabela = {}
for i = 1, 100 do
    tabela[i] = math.random(1, 100)
end

contadorDePares = 0
for i = 1, 100 do
    if tabela[i] % 2 == 0 then
        contadorDePares = contadorDePares + 1
    end
end

print("Números pares na tabela: " .. contadorDePares)