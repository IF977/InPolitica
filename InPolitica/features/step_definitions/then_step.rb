Then(/^Eu poderia ver ([^"]*)$/) do |text|
  #colocar a pagina aqui
end

Then(/^Eu não posso ver ([^"]*)/) do |text|
  #colocar a pagina aqui
end

Then("devo receber uma mensagem de erro dizendo {string}") do |string|
  page.should have_content('Erro')
end

Then("devo visualizar um texto dizendo 'Sem resultados para sua pesquisa' {string}") do |string|
  page.should have_content('Sem resultados para sua pesquisa')
end

Then("eu poderei ver a foto do deputado e informações sobre seu mandato {string}") do |string|
  page.should have_content('Informações sobre o mandato')
end

Then("eu visualizarei as informações sobre a plataforma {string}") do |string|
  page.should have_content('Quem somoss') 