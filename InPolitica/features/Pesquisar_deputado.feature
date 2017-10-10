Feature: Pesquisar deputado
  Como usuário visitante
  Eu gostaria de inserir o nome (ou parte dele) de um deputado em uma caixa de texto
  Para que eu possa buscá-lo e, se quiser, ver seu perfil

Scenario: Encontrar os deputados
  Given Eu estou na pagina inicial
  And Eu vejo o campo de pesquisa
  And Digito o nome do deputado a ser pesquisado
  And Clico em pesquisar
  Then Eu visualizarei os possiveis deputados a qual fiz a pesquisa