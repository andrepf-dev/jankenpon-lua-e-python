<img src="https://github.com/andrepf-dev/jankenpon-lua-e-python/assets/49399742/ef2322dc-9722-4848-a7f6-f03a43c7a0bd" width="90%">

## Jankenpon com Lua ou Python

**Repositorio: Jogo de Pedra, Tesoura e Papel**

**Descrição:**

Este repositório contém dois códigos, um em Lua e outro em Python, para o jogo de Pedra, Tesoura e Papel. O jogo é bastante simples, com as regras tradicionais:

* Pedra vence tesoura
* Tesoura vence papel
* Papel vence pedra

O jogo funciona da seguinte forma:

1. O jogador escolhe entre pedra, tesoura ou papel.
2. O computador também escolhe uma opção aleatoriamente.
3. O resultado do jogo é determinado de acordo com as regras acima.

O jogo continua até que o jogador ou o computador decidam parar.

**Código Lua:**

```lua
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
```

**Código Python:**

```python
import random

def obter_escolha():
    escolha = input("Escolha pedra (x), tesoura (t) ou papel (p): ").lower()
    if escolha == "x":
        return "pedra"
    elif escolha == "t":
        return "tesoura"
    elif escolha == "p":
        return "papel"
    else:
        print("Escolha inválida. Tente novamente.")
        return obter_escolha()

def determinar_resultado(jogador, computador):
    if jogador == computador:
        return "Empate!"
    elif (jogador == "pedra" and computador == "tesoura") or \
         (jogador == "tesoura" and computador == "papel") or \
         (jogador == "papel" and computador == "pedra"):
        return "Você ganhou!"
    else:
        return "Você perdeu!"

def jogar_pedra_tesoura_papel():
    print("Bem-vindo ao Pedra, Tesoura e Papel!")
    while True:
        jogador = obter_escolha()
        escolhas = ["pedra", "tesoura", "papel"]
        computador = random.choice(escolhas)
        print("Você escolheu:", jogador)
        print("O computador escolheu:", computador)
        resultado = determinar_resultado(jogador, computador)
        print(resultado)
        print("-----------------------------")
        resposta = input("Deseja jogar novamente? (s/n): ").lower()
        if resposta != "s":
            break
    print("Obrigado por jogar!")

jogar_pedra_tesoura_papel()
