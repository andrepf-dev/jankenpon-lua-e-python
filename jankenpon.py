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
