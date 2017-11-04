Dado("que eu esteja logado no site da Inmetrics") do
  visit "http://www.inmetrics.com.br/"
end

Quando("acessar a pagina quem somos") do
  find(:xpath, '//*[@id="menu-item-2960"]/a/span/span').click
end

Entao("validar o texto {int} anos de atuacao") do |int|
  assert_text('MAIS DE 15 ANOS DE ATUAÇÃO')
end
