Feature: Listar todos os deputados
  
  Como usuário visitante
  Eu gostaria de visualizar uma página com todos os deputados federais
  Para que eu possa ver informações rápidas sobre eles
  
Scenario: Acessar página com todos os deputados
  Given eu cliquei na seção do menu 'Deputados Federais'
  When carregar a página
  Then eu poderei ver uma lista com fotos e nomes de todos os deputados
  And poderei clicar em suas fotos para acessar seu perfil