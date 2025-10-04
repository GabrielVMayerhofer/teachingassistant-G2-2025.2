Feature: Grade report
  As a professor com múltiplas turmas matriculadas
  I want to visualizar um relatório de desempenho da turma
  So that eu possa acompanhar os percentuais de alunos que passaram por média, que irão para a final e que foram reprovados por nota

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

Cenário 2: mostrar as porcentagens dos alunos aprovados e reprovados em formato de tabela.
  Given estou logado como professor
  And estou na página “Relatório”
  And “João” reprovou por falta
  And “Maria” reprovou por média
  And “José” foi aprovado por nota
  And “Eduarda” foi aprovada por nota
  When aperto a opção “Exibir”
  And seleciono o tipo “Tabela”
  And seleciono o parâmetro de “Aprovado x Reprovado”
  And confirmo
  Then ainda estou na página “Relatório”
  And devo ver uma tabela com duas colunas, indicando os alunos aprovados e reprovados
  And vejo a quantidade e a porcentagem de alunos aprovados e reprovados
  And vejo a confirmação do tipo "Tabela" e os parâmetros "Aprovado x Reprovado"

Cenário 3: mostrar a tabel de aluno abaixo da média quando não há alunos abaixo da média
	Given estou logado como professor
  And estou na página “Relatório”
  And “João” tem nota 8.9
  And “Eduarda” tem nota 7.3
  And “Maria” tem nota 9.5
  And “José” tem nota 7.1
  When aperto a opção “Exibir”
  And seleciono o tipo “Tabela”
  And seleciono o parâmetro de “Abaixo da média”
  And confirmo
  Then ainda estou na página “Relatório”
  And devo ver a tabela vazia com uma mensagem indicando que a tabela esta vazia

Cenário 4: exportar o relatorio como csv.
	Given que estou logado como professor
  And estou na página "Relatório"
  When seleciono a opção "Exportar"
  And confirmo a exportação
  Then ainda estou na página "Relatório"
  And vejo o pop-up para download do arquivo CSV
