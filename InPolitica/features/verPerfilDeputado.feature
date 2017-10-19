Feature: Ver o perfil de um deputado federal
  
  Como usuário visitante
  Eu gostaria de visualizar o perfil de um deputado federal
  Para que eu possa ver, com mais detalhes, informações sobre ele
  
Scenario: Acessar o perfil de um deputado
  Given eu fiz uma busca do deputado pelo seu nome
  Then eu poderei ver o resultado da busca
  And poderei clicar no deputado que procurei
  Then acessarei seu perfil
  And visualizarei informações sobre ele
  
Scenario: Acessar um perfil que não existe (Caminho triste)
  When eu acessar seu perfil
  Then devo receber uma mensagem de erro dizendo 'Este perfil de deputado não existe'