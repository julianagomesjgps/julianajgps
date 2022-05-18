Algoritmo "semnome"
// Disciplina   : [Programação e Desenvolvimento de Algoritmos]
// Descrição   : Tempo total de atendimento dos clientes que fizeram
// pedidos durante o dia na Pizzaria.
// Autor(a)    : Juliana Gomes Pereira de Sousa
// Data atual  : 02/05/2022
Var
   // Seção de Declarações das variáveis

   i: inteiro                              //contador
   cliente2,minutoR,tempoatend: inteiro
   nregistro: inteiro                     //número de registros
   pedido: vetor [1..100] de caracter     //pedido
   cliente: vetor [1..100] de inteiro    //número do cliente
   minuto: vetor[1..960] de inteiro      //tempo em minutos

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   escreval("Número de registros?")
   leia (nregistro)
   Para i de 1 até nregistro faça
      escreval("Pedido recebido digite 'r' Pedido enviado digite 'e'")
      leia (pedido[i])
      escreval("Digite o número do cliente")
      leia (cliente[i])
      escreval("Digite o minuto do dia do pedido")
      leia (minuto[i])
   fimpara
   Para i de 1 até nregistro faça
      se pedido[i]= "r" entao
         cliente2:=cliente[i]
         minutoR:=minuto[i]
         Para i de 1 até nregistro faça
            se (pedido[i]= "e") e (cliente[i]=cliente2) entao
               tempoatend:=minuto[i]-minutoR
            senao tempoatend:=-1
            fimse
         fimpara
         escreval("Pedido do cliente", cliente2, " entregue com", tempoatend, " minutos")
      fimse
   fimpara

Fimalgoritmo