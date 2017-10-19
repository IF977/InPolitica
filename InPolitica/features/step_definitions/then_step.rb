Then(/^Eu poderia ver ([^"]*)$/) do |text|
  #colocar a pagina aqui
end

Then(/^Eu não posso ver ([^"]*)/) do |text|
  #colocar a pagina aqui
end

Then("devo receber uma mensagem de erro dizendo {string}") do |string|
  page.should have_content('Erro')
end