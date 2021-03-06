Dado("que loguei no site SuiteCRM com usuario {string} e senha {string}") do |userName, password|
	LoginPage.new.load
	LoginPage.new.log_in(userName, password)
end

Quando("realizar o cadastro da nova task com os dados {string}, {string}, {string}, {string}, {string}, {string}") do |subject, status, startDate, dueDate, priority, description|
	Menu.new.createTask
	CreatedTask.new.fillOutForm(subject, status, startDate, dueDate, priority, description)
end

Entao("a tela TaskOverview será mostrada") do
 	expect(TaskOverview.new.title_aba_field.text).to eq("TASK OVERVIEW")
end