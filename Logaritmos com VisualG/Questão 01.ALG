Algoritmo "semnome"
// Disciplina   : [Programa��o e Desenvolvimento de Algoritmos]
// Descri��o   : Tempo total de atendimento dos clientes que fizeram
// pedidos durante o dia na Pizzaria.
// Autor(a)    : Juliana Gomes Pereira de Sousa
// Data atual  : 02/05/2022
Var
   // Se��o de Declara��es das vari�veis

   i: inteiro                              //contador
   cliente2,minutoR,tempoatend: inteiro
   nregistro: inteiro                     //n�mero de registros
   pedido: vetor [1..100] de caracter     //pedido
   cliente: vetor [1..100] de inteiro    //n�mero do cliente
   minuto: vetor[1..960] de inteiro      //tempo em minutos

Inicio
   // Se��o de Comandos, procedimento, fun��es, operadores, etc...

   escreval("N�mero de registros?")
   leia (nregistro)
   Para i de 1 at� nregistro fa�a
      escreval("Pedido recebido digite 'r' Pedido enviado digite 'e'")
      leia (pedido[i])
      escreval("Digite o n�mero do cliente")
      leia (cliente[i])
      escreval("Digite o minuto do dia do pedido")
      leia (minuto[i])
   fimpara
   Para i de 1 at� nregistro fa�a
      se pedido[i]= "r" entao
         cliente2:=cliente[i]
         minutoR:=minuto[i]
         Para i de 1 at� nregistro fa�a
            se (pedido[i]= "e") e (cliente[i]=cliente2) entao
               tempoatend:=minuto[i]-minutoR
            senao tempoatend:=-1
            fimse
         fimpara
         escreval("Pedido do cliente", cliente2, " entregue com", tempoatend, " minutos")
      fimse
   fimpara

Fimalgoritmo