
Algoritmo "Alunos media e quantos aprovados"
// Disciplina   : Projeto e Desenvolvimentpo de Algoritomos
// Descrição   : Média dos alunos e quantos foram aprovados
// Autor(a)    : Juliana Gomes Pereira de Sousa
// Data atual  : 11/05/2022
Var
   // Seção de Declarações das variáveis
   SITUACAOAL:VETOR[1..6] DE CARACTER
   ESTUDANTE: INTEIRO
   AD1,AP1,AD2,AP2,N1,N2,AP3,MEDIAFINALDOALUNO,MAIORNOTA:VETOR[1..100]DE REAL
   I,QTAPROVADO:INTEIRO
Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   ESCREVAL ("QUANTOS ESTUDANTES NA TURMA?")
   LEIA(ESTUDANTE)
   PARA I:=1 ATE ESTUDANTE FACA
      ESCREVAL("DIGITE A NOTA DA AD1 DO ALUNO")
      LEIA(AD1[I])
      ESCREVAL("DIGITE A NOTA DA AP1 DO ALUNO")
      LEIA(AP1[I])
      N1[I]:=(2*AD1[I]+8*AP1[I])/10.0
      ESCREVAL("DIGITE A NOTA DA AD2 DO ALUNO")
      LEIA(AD2[I])
      ESCREVAL("DIGITE A NOTA DA AP2 DO ALUNO")
      LEIA(AP2[I])
      N2[I]:=(2*AD2[I]+8*AP2[I])/10.0
      MEDIAFINALDOALUNO[I]:=(N1[I]+N2[I])/2
      SE MEDIAFINALDOALUNO[I] >= 6 ENTAO
         SITUACAOAL[I]:="APROVADO"
         QTAPROVADO:=QTAPROVADO+1
      SENAO (MEDIAFINALDOALUNO[I]<6)ENTAO
         ESCREVAL("COMO A MÉDIA DO ALUNO FOI < 6 DIGITE A NOTA DA AP3 DO ALUNO")
         LEIA(AP3[I])
         SE N1[I] > N2[I] ENTAO
            MAIORNOTA[I]:=N1[I]
         SENAO
            MAIORNOTA[I]:=N2[I]
         FIMSE
         MEDIAFINALDOALUNO[I]:=(MAIORNOTA[I]+(AP3[I]))/2
         SE MEDIAFINALDOALUNO[I]>=5 ENTAO
            QTAPROVADO:=QTAPROVADO+1
         FIMSE
      FIMSE
   FIMPARA
   LIMPATELA
   PARA I:=1 ATE ESTUDANTE FACA
      ESCREVAL("A MÉDIA FINAL DO ALUNO", I, " É: ", MEDIAFINALDOALUNO[I] )
   FIMPARA
   ESCREVAL("A QUANTIDADE DE ALUNO APROVADO É: ", QTAPROVADO)

FIMALGORITMO


