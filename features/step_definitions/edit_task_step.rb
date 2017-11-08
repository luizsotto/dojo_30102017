Quando("realizar uma pesquisa pelo nome da task  {string}") do |subject|
	Menu.new.goToTask
	ViewTasks.new.filtrateByName(subject)
end

Quando("realizar uma alteração no Status da task para {string}") do |status|
	ViewTasks.new.toEdit
  	CreatedTask.new.fillOutForm("", status, "", "", "", "")
  	$novo_statu = status
end

Entao("sera exibido a pagina que contem os dados da task com o novo Status") do
 	expect(TaskOverview.new.status_field.text).to eq($novo_statu)
end