Quando("realizar uma pesquisa pelo nome da task  {string}") do |subject|
	Menu.new.goToTask
	ViewTasks.new.filtrateByName(subject)
end

Quando("realizar uma alteração no Status da task para {string}") do |string|
  #pending # Write code here that turns the phrase above into concrete actions
end

Entao("sera exibido a pagina que contem os dados da task com o novo Status") do
  #pending # Write code here that turns the phrase above into concrete actions
end