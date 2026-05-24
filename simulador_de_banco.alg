Algoritmo "simulador_de_banco"
//aluno: Gabriel Ferreira
//ra: 5180202
//aluno: Bruno Andrade
//ra: 5182948
//aluno: João Vitor Nascimento
//ra: 5181778
//aluno: Maria Eduarda Alves Cavalcante
//ra: 5173514
Var
   num, saldo, saque, ex, i: inteiro
   saldoInsuficiente, valorInvalido, senhaIncorreta: logico
   extrato: vetor [1..100] de caractere
   nome, senha, tentativa: caractere

procedimento sacar_dinheiro
Var
   saqueResto, notas100, notas50, notas20, notas10, notas5, notas2, moedas1: inteiro
   total100, total50, total20, total10, total5, total2, total1: inteiro
Inicio
   // Algoritmo de decomposição de valores para cédulas
   total100 <- 0
   total50 <- 0
   total20 <- 0
   total10 <- 0
   escreval("========== SACAR ==========")
   escreval("Digite o  valor do saque (entre 1 e 1000): ")
   escreval("Saldo atual: R$",saldo:6:2)
   leia(saque)
   se (saque >= 1) e (saque <= 1000) e (saque <= saldo) entao
      saldoInsuficiente <- falso
      valorInvalido <- falso
      saqueResto <- saque
      se saqueResto >= 100 entao
         notas100 <- saqueResto/100 mod 100
         total100 <- notas100 + total100
         saqueResto <- saqueResto - (notas100 * 100)
      fimse
      se saqueResto >= 50 entao
         notas50 <- saqueResto/50 mod 100
         total50 <- notas50 + total50
         saqueResto <- saqueResto - (notas50 * 50)
      fimse
      se saqueResto >= 20 entao
         notas20 <- saqueResto/20 mod 100
         total20 <- notas20 + total20
         saqueResto <- saqueResto - (notas20 * 20)
      fimse
      se saqueResto >= 10 entao
         notas10 <- saqueResto/10 mod 100
         total10 <- notas10 + total10
         saqueResto <- saqueResto - (notas10 * 10)
      fimse
      se saqueResto >= 5 entao
         notas5 <- saqueResto/5 mod 100
         total5 <- notas5 + total5
         saqueResto <- saqueResto - (notas5 * 5)
      fimse
      se saqueResto >= 2 entao
         notas2 <- saqueResto/2 mod 100
         total2 <- notas2 + total2
         saqueResto <- saqueResto - (notas2 * 2)
      fimse
      se saqueResto >= 1 entao
         moedas1 <- saqueResto/1 mod 100
         total1 <- moedas1 + total1
         saqueResto <- saqueResto - (moedas1 * 1)
      fimse
      escreval(" ")
      escreval("========== TOTAL ==========")
      escreval("Quantidade total de notas de R$100,00: ",total100)
      escreval("Quantidade total de notas de R$50,00: ",total50)
      escreval("Quantidade total de notas de R$20,00: ",total20)
      escreval("Quantidade total de notas de R$10,00: ",total10)
      escreval("Quantidade total de notas de R$5,00: ",total5)
      escreval("Quantidade total de notas de R$2,00: ",total2)
      escreval("Quantidade total de moedas de R$1,00: ",total1)
      escreval("===========================")
   senao
      se saque > saldo entao
         escreval("Erro: Saldo insuficiente!")
         saldoInsuficiente <- verdadeiro
      senao
         escreval("Erro: Valor inválido!")
         valorInvalido <- verdadeiro
      fimse
   fimse

fimprocedimento

procedimento consultar_saldo(x: inteiro)
inicio
   escreval("========== SALDO ==========")
   escreval("Saldo atual: R$",x:6:2)
   escreval(" ")
fimprocedimento

procedimento depositar_dinheiro
var
   x: inteiro
inicio
   escreval("========== DEPOSITAR ==========")
   escreval("Digite o valor do depósito (maior que 0): ")
   escreval("Saldo atual: R$",saldo:6:2)
   leia(x)
   se x > 0 entao
      saldo <- saldo + x
      escreval("Depósito realizado com sucesso!")
      escreval("Saldo atual: R$",saldo:6:2)
      ex <- ex + 1
      extrato[ex] <- "Depósito realizado"
   senao
      escreval("Erro: Valor inválido!")
   fimse
fimprocedimento

procedimento ver_extrato
var
   i: inteiro
inicio
   escreval("========== EXTRATO ==========")
   se ex = 0 entao
      escreval("Nenhuma movimentação realizada")
      escreval(" ")
   senao
      para i de 1 ate ex faca
         escreval(i," - ",extrato[i])
      fimpara
      escreval(" ")
   fimse
fimprocedimento

procedimento alterar_senha
var
   nova, nova2: caractere
inicio
   escreva("Digite sua nova senha: ")
   leia(nova)
   se nova = senha entao
      escreval("Erro: A nova senha não pode ser igual à antiga!")
   senao
      escreva("Confirme a nova senha: ")
      leia(nova2)
      se nova2 = nova entao
         senha <- nova
         escreval("Senha alterada com sucesso!")
      senao
         escreval("Erro: As senhas não correspondem!")
      fimse
   fimse
   escreval("")
fimprocedimento

Inicio
   //Variáveis inicializadas com zero
   saldo <- 0
   ex <- 0
   i <- 0
   escreval("========== SIMULADOR DE BANCO ==========")
   escreval(" ")
   escreval("===============================================")
   escreval("######      ###    ##    ##   ######   ####### ")
   escreval("##    ##   ## ##   ###   ##  ##    ##  ##    ##")
   escreval("##    ##  ##   ##  ####  ##  ##        ##    ##")
   escreval("######    #######  ## ## ##  ##        ##    ##")
   escreval("##    ##  ##   ##  ##  ####  ##        ##    ##")
   escreval("##    ##  ##   ##  ##   ###  ##    ##  ##    ##")
   escreval("######    ##   ##  ##    ##   ######   ####### ")
   escreval("===============================================")
   escreval(" ")
   escreval("Olá e boas vindas ao Nosso Banco!")
   escreval(" ")
   escreva("Nome: ")
   leia(nome)
   escreva("Senha: ")
   leia(senha)
   limpatela
   repita
      escreval(" ")
      escreval("Conta de ",nome)
      escreval(" ")
      escreval("              ___________________________________________ ")
      escreval("             /                                           \")
      escreval("            |    _____________________________________    |")
      escreval("            |   |                                     |   |")
      escreval("            |   |                                     |   |")
      escreval("            |   |  ============== MENU ============   |   |")
      escreval("            |   |  1 - Consultar saldo                |   |")
      escreval("            |   |  2 - Sacar dinheiro                 |   |")
      escreval("            |   |  3 - Depositar dinheiro             |   |")
      escreval("            |   |  4 - Ver extrato                    |   |")
      escreval("            |   |  5 - Alterar senha                  |   |")
      escreval("            |   |  6 - Sair                           |   |")
      escreval("            |   |  =================================  |   |")
      escreval("            |   |                                     |   |")
      escreval("            |   |                                     |   |")
      escreval("            |   |_____________________________________|   |")
      escreval("            |                                             |")
      escreval("             \___________________________________________/")
      escreval("                    \___________________________/")
      escreval("                 ___________________________________")
      escreval("              _-'    .-.-.-.-.-.-.-.-.-.-.-.-.-.  --- `-_")
      escreval("           _-'.-.-. .--------------------------.  .-.-.`-_")
      escreval("        _-'.-.-.-. .----------------------------`__`. .-.-.-.`-_")
      escreval("     _-'.-.-.-.-. .-------------------------------. .-.-.-.-.`-_")
      escreval("  _-'.-.-.-.-.-. .---.-. .-----------------. .-.---. .---.-.-.-.`-_")
      escreval(":-------------------------------------------------------------------------:")
      escreval("`---._.-------------------------------------------------------------._.---'")

      escreva("Digite o número do procedimento: ")
      leia(num)
      se (num < 1) ou (num > 6) entao
         limpatela
         escreval("Erro: Valor inválido!")
         escreval(" ")
      senao
         se num <> 6 entao
            escreva("Digite sua senha: ")
            leia(tentativa)
            se tentativa = senha entao
               senhaIncorreta <- falso
               se num = 1 entao
                  limpatela
                  consultar_saldo(saldo)
                  ex <- ex + 1
                  extrato[ex] <- "Consulta de saldo"
               fimse
               se num = 2 entao
                  limpatela
                  sacar_dinheiro
                  se (saldoInsuficiente = falso) e (valorInvalido = falso)entao
                     saldo <- saldo - saque
                     escreval("Saldo atual: R$",saldo:6:2)
                     ex <- ex + 1
                     extrato[ex] <- "Saque realizado"
                  fimse

               fimse
               se num = 3 entao
                  limpatela
                  depositar_dinheiro
               fimse
               se num = 4 entao
                  limpatela
                  ver_extrato
               fimse
               se num = 5 entao
                  limpatela
                  alterar_senha
               fimse
            senao
               limpatela
               escreval("Senha Incorreta!!!")
               i <- i + 1
               escreval("Mais ",3 - i," tentativa(s) ate o caixa ser bloqueado!")
               se i = 3 entao
                  limpatela
                  senhaIncorreta <- verdadeiro
               fimse
            fimse
         fimse
      fimse
   ate (num = 6) ou (senhaIncorreta = verdadeiro)
   se num = 6 entao
      limpatela
      escreval("========== SAIR ==========")
      escreval("Operação finalizada com sucesso! Tenha um bom dia")
      ver_extrato
      escreval("                      --MMmm..                    ")
      escreval("                ####################              ")
      escreval("            ############################          ")
      escreval("          ################################        ")
      escreval("        ####################################      ")
      escreval("      ########################################    ")
      escreval("    ##########################################MM  ")
      escreval("    ############################################  ")
      escreval("  ##############################################mm")
      escreval("  ############      ############      ############")
      escreval("  ##########::      ############      ############")
      escreval("--############      ############      ############")
      escreval("MM################################################")
      escreval("mm################################################")
      escreval("..################################################")
      escreval("  ##################################mm############")
      escreval("  ##########    mm################      ##########")
      escreval("  ##########      --############      ::########::")
      escreval("    ##########          MM++          ##########  ")
      escreval("    ############--                mm##########::  ")
      escreval("      ##############++        MM##############    ")
      escreval("        ####################################      ")
      escreval("          ################################        ")
      escreval("            MM########################::          ")
      escreval("                mm################::              ")
   senao
      escreval("========== CAIXA BLOQUEADO ==========")
      escreval("                                                  ")
      escreval("                                                  ")
      escreval("                                                  ")
      escreval("                  ################                ")
      escreval("              ########################            ")
      escreval("            ############################          ")
      escreval("          ################################        ")
      escreval("          ################################        ")
      escreval("        ####################################      ")
      escreval("        ####################################      ")
      escreval("        ######################################    ")
      escreval("      ########################################    ")
      escreval("      ########################################    ")
      escreval("      ########      ++##########      ########    ")
      escreval("      MM####          ########          ######    ")
      escreval("      @@####            @@##..          @@####    ")
      escreval("      --@@##            ######          MM####    ")
      escreval("        ####          ########          ####      ")
      escreval("        ####################################      ")
      escreval("        ################    ################      ")
      escreval("      --##############        ################    ")
      escreval("      @@##############        ################    ")
      escreval("        ##############  ::MM  ##############      ")
      escreval("                ####################              ")
      escreval("                @@##################              ")
      escreval("                  ##  ####++##  ####              ")
      escreval("                ::##  ####++##  ####              ")
      escreval("                        --..                      ")
      escreval("                                                  ")
   fimse
Fimalgoritmo
