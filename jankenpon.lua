-- Função para obter a escolha do jogador
local function obterEscolha()
    print("Escolha pedra (x), tesoura (t) ou papel (p): ")
    local escolha = io.read():lower()
    if escolha == "x" then
        return "pedra"
    elseif escolha == "t" then
        return "tesoura"
    elseif escolha == "p" then
        return "papel"
    else
        print("Escolha invalida. Tente novamente.")
        return obterEscolha()
    end
end

-- Função para determinar o resultado do jogo
local function determinarResultado(jogador, computador)
    if jogador == computador then
        return "Empate!"
    elseif (jogador == "pedra" and computador == "tesoura") or
           (jogador == "tesoura" and computador == "papel") or
           (jogador == "papel" and computador == "pedra") then
        return "Voce ganhou!"
    else
        return "Voce perdeu!"
    end
end

-- Função principal do jogo
local function jogarPedraTesouraPapel()
    print("-----------------------------")
    print("Bem-vindo ao jogo Jankenpon!")
    while true do
        local jogador = obterEscolha()
        local escolhas = {"pedra", "tesoura", "papel"}
        local computador = escolhas[math.random(#escolhas)]
        print("Voce escolheu: " .. jogador)
        print("O computador escolheu: " .. computador)
        local resultado = determinarResultado(jogador, computador)
        print(resultado)
        print("-----------------------------")
        print("Deseja jogar novamente? (s/n): ")
        local resposta = io.read():lower()
        if resposta ~= "s" then
            break
        end
    end
    print("Obrigado por jogar!")
end

-- Iniciar o jogo
jogarPedraTesouraPapel()