Given ('Eu estou na página inicial') do
  visit (root_path)
end

Given(/^eu cliquei na seção do menu {string}$/) do |string|
  click_link(string)
end