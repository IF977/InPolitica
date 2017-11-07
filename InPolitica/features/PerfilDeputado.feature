Feature: Perfil do deputado
  
  Como usuário visitante
  Eu gostaria de ver o perfil de um deputado
  Para que eu possa ver informações sobre ele e seu mandato
  
Scenario: Acessar página do deputado
  Given Eu vejo uma lista com fotos e nomes de todos os deputados
  And eu clico em sua foto para acessar seu perfil
  Then eu poderei ver a foto do deputado e informações sobre seu mandato
  
  