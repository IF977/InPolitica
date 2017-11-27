Feature: Visualização da tela quem somos
  
  Como usuário visitante
  Eu gostaria de ver uma seção 'Quem Somos'
  Para saber do que se trata o projeto e quem o desenvolveu

Scenario: Tela quem somos
  Given Eu estou na página inicial
  And Eu dou um scroll na página
  Then Eu visualizarei as informações sobre a plataforma
