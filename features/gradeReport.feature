Cenário 1: filtrar alunos abaixo da média.
  Given estou logado como professor
  And estou na página “Relatório”
  And “João” possui nota 3
  And “Maria” possui nota 5.3
  And “José” possui nota 7
  And “Eduarda” possui nota 7.9
  When aperto a opção “Filtros”
  And seleciono a opção “Abaixo da média”
  And confirmo
  Then ainda estou na página “Relatório”
  And devo ver “João” e “Maria”

Cenário 4: mostrar as porcentagens dos alunos aprovados e reprovados em formato de tabela.
  Given estou logado como professor
  And estou na página “Relatório”
  And “João” foi reprovado por falta
  And “Maria” foi reprovada por média
  And “José” foi aprovado por nota
  And “Eduarda” foi aprovada por nota
  When aperto a opção “Exibir”
  And seleciono o tipo “Tabela”
  And seleciono o parâmetro de “Aprovado x Reprovado”
  And confirmo
  Then ainda estou na página “Relatório”
  And devo ver uma tabela com duas colunas, indicando os alunos aprovados e reprovados
  And vejo a quantidade e a porcentagem de alunos aprovados e reprovados
